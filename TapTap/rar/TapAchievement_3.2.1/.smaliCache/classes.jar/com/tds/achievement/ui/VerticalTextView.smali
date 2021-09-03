.class public Lcom/tds/achievement/ui/VerticalTextView;
.super Landroid/widget/TextView;
.source "VerticalTextView.java"


# instance fields
.field isVertical:Z

.field topDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/achievement/ui/VerticalTextView;->isVertical:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isVertical"    # Z

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean p2, p0, Lcom/tds/achievement/ui/VerticalTextView;->isVertical:Z

    .line 24
    return-void
.end method

.method private isChinese()Z
    .registers 3

    .line 111
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1e

    .line 112
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/tds/achievement/ui/VerticalTextView;->isChinese(C)Z

    move-result v0

    return v0

    .line 114
    :cond_1e
    return v1
.end method

.method private isChinese(C)Z
    .registers 4
    .param p1, "c"    # C

    .line 118
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 119
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_1f

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_1f

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_1f

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_1f

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_1f

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1d

    goto :goto_1f

    .line 127
    :cond_1d
    const/4 v1, 0x0

    return v1

    .line 125
    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 79
    iget-boolean v0, p0, Lcom/tds/achievement/ui/VerticalTextView;->isVertical:Z

    if-eqz v0, :cond_56

    invoke-direct {p0}, Lcom/tds/achievement/ui/VerticalTextView;->isChinese()Z

    move-result v0

    if-nez v0, :cond_56

    .line 80
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 81
    .local v0, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 82
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 86
    iget-boolean v1, p0, Lcom/tds/achievement/ui/VerticalTextView;->topDown:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 87
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_3e

    .line 90
    :cond_31
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 94
    :goto_3e
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getCompoundPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getExtendedPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 96
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 98
    return-void

    .line 100
    .end local v0    # "textPaint":Landroid/text/TextPaint;
    :cond_56
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 68
    iget-boolean v0, p0, Lcom/tds/achievement/ui/VerticalTextView;->isVertical:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/tds/achievement/ui/VerticalTextView;->isChinese()Z

    move-result v0

    if-nez v0, :cond_19

    .line 69
    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->onMeasure(II)V

    .line 70
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tds/achievement/ui/VerticalTextView;->setMeasuredDimension(II)V

    .line 71
    return-void

    .line 73
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 74
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tds/achievement/ui/VerticalTextView;->setMeasuredDimension(II)V

    .line 75
    return-void
.end method

.method public setCustomText(Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 27
    if-nez p1, :cond_3

    .line 28
    return-void

    .line 32
    :cond_3
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    .line 35
    .local v0, "lineHeight":I
    instance-of v1, p1, Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    .line 36
    move-object v1, p1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 38
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v4, Lcom/tds/achievement/ui/ExcludeInnerLineSpaceSpan;

    invoke-direct {v4, v0}, Lcom/tds/achievement/ui/ExcludeInnerLineSpaceSpan;-><init>(I)V

    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 38
    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_32

    .line 41
    .end local v1    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_21
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 43
    .restart local v1    # "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v4, Lcom/tds/achievement/ui/ExcludeInnerLineSpaceSpan;

    invoke-direct {v4, v0}, Lcom/tds/achievement/ui/ExcludeInnerLineSpaceSpan;-><init>(I)V

    .line 44
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 43
    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48
    :goto_32
    invoke-virtual {p0, v1}, Lcom/tds/achievement/ui/VerticalTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public setEms(I)V
    .registers 3
    .param p1, "ems"    # I

    .line 105
    invoke-direct {p0}, Lcom/tds/achievement/ui/VerticalTextView;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 106
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEms(I)V

    .line 108
    :cond_9
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 53
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 54
    iget-boolean v0, p0, Lcom/tds/achievement/ui/VerticalTextView;->isVertical:Z

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/tds/achievement/ui/VerticalTextView;->isChinese()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 55
    invoke-virtual {p0}, Lcom/tds/achievement/ui/VerticalTextView;->getGravity()I

    move-result v0

    .line 56
    .local v0, "gravity":I
    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_28

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_28

    .line 58
    and-int/lit8 v1, v0, 0x7

    or-int/lit8 v1, v1, 0x30

    invoke-virtual {p0, v1}, Lcom/tds/achievement/ui/VerticalTextView;->setGravity(I)V

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tds/achievement/ui/VerticalTextView;->topDown:Z

    goto :goto_2b

    .line 61
    :cond_28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tds/achievement/ui/VerticalTextView;->topDown:Z

    .line 64
    .end local v0    # "gravity":I
    :cond_2b
    :goto_2b
    return-void
.end method
