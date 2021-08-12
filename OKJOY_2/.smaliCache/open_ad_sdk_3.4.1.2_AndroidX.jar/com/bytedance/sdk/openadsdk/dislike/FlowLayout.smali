.class public Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->a:Ljava/util/List;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->b:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 169
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    .line 98
    const-string p1, "TAG"

    const-string p2, "onLayout"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 100
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 102
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getWidth()I

    move-result p1

    .line 103
    nop

    .line 104
    nop

    .line 105
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getChildCount()I

    move-result p3

    .line 107
    nop

    .line 108
    const/4 p4, 0x0

    move p5, p4

    move v0, p5

    move v1, v0

    :goto_25
    if-ge p5, p3, :cond_81

    .line 109
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 111
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 115
    mul-int/2addr v4, v1

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v4, v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getPaddingLeft()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    if-le v4, v6, :cond_6d

    .line 117
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    nop

    .line 122
    iget p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v5

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p2

    .line 124
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    move v1, p4

    .line 127
    :cond_6d
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 128
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v4

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 129
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 p5, p5, 0x1

    goto :goto_25

    .line 132
    :cond_81
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getPaddingLeft()I

    move-result p1

    .line 136
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getPaddingTop()I

    move-result p2

    .line 138
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 139
    move p5, p4

    :goto_9e
    if-ge p5, p3, :cond_f9

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 142
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->b:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 144
    move v2, p4

    :goto_b5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f1

    .line 145
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 147
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_ca

    .line 148
    goto :goto_ee

    .line 150
    :cond_ca
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 151
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    .line 152
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, p2

    .line 153
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 154
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    .line 156
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 157
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr p1, v3

    .line 144
    :goto_ee
    add-int/lit8 v2, v2, 0x1

    goto :goto_b5

    .line 160
    :cond_f1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getPaddingLeft()I

    move-result p1

    .line 161
    add-int/2addr p2, v1

    .line 139
    add-int/lit8 p5, p5, 0x1

    goto :goto_9e

    .line 163
    :cond_f9
    return-void
.end method

.method protected onMeasure(II)V
    .registers 22

    .line 35
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 36
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 37
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 38
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 40
    nop

    .line 41
    nop

    .line 43
    nop

    .line 44
    nop

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getChildCount()I

    move-result v5

    .line 47
    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_1f
    if-ge v6, v5, :cond_79

    .line 48
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 50
    move/from16 v12, p1

    move/from16 v13, p2

    invoke-virtual {v0, v11, v12, v13}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 52
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v12

    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v12

    .line 55
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    .line 57
    add-int v12, v8, v15

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v14, v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getPaddingLeft()I

    move-result v16

    sub-int v16, v1, v16

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getPaddingRight()I

    move-result v17

    move/from16 v18, v12

    sub-int v12, v16, v17

    if-le v14, v12, :cond_65

    .line 59
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 61
    nop

    .line 63
    add-int/2addr v10, v9

    .line 64
    move v9, v11

    move v8, v15

    goto :goto_6d

    .line 69
    :cond_65
    nop

    .line 71
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v9, v8

    move/from16 v8, v18

    .line 74
    :goto_6d
    add-int/lit8 v11, v5, -0x1

    if-ne v6, v11, :cond_76

    .line 75
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 76
    add-int/2addr v10, v9

    .line 47
    :cond_76
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 80
    :cond_79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sizeWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|sizeHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TAG"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "width = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_b6

    goto :goto_c0

    .line 83
    :cond_b6
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v7, v1

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v7

    :goto_c0
    if-ne v4, v5, :cond_c3

    goto :goto_ce

    .line 84
    :cond_c3
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v10, v2

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->getPaddingBottom()I

    move-result v2

    add-int v3, v10, v2

    .line 82
    :goto_ce
    invoke-virtual {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->setMeasuredDimension(II)V

    .line 86
    return-void
.end method
