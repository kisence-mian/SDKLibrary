.class public final Lcom/tapjoy/internal/is;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/is$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:F

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/tapjoy/internal/ip;

.field private h:Lcom/tapjoy/internal/hw;

.field private i:Lcom/tapjoy/internal/is$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/hw;Lcom/tapjoy/internal/is$a;)V
    .registers 8

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/tapjoy/internal/is;->b:F

    .line 64
    iput-object p2, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    .line 65
    iput-object p3, p0, Lcom/tapjoy/internal/is;->i:Lcom/tapjoy/internal/is$a;

    .line 66
    nop

    .line 1075
    invoke-virtual {p0}, Lcom/tapjoy/internal/is;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1078
    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/tapjoy/internal/is;->c:Landroid/view/View;

    .line 1079
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setId(I)V

    .line 1080
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {p3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1081
    const/16 v2, 0xd

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1082
    iget-object v3, p0, Lcom/tapjoy/internal/is;->c:Landroid/view/View;

    invoke-virtual {p0, v3, p3}, Lcom/tapjoy/internal/is;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1084
    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/tapjoy/internal/is;->d:Landroid/view/View;

    .line 1085
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1086
    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1087
    iget-object v3, p0, Lcom/tapjoy/internal/is;->d:Landroid/view/View;

    invoke-virtual {p0, v3, p3}, Lcom/tapjoy/internal/is;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/tapjoy/internal/is;->e:Landroid/widget/FrameLayout;

    .line 1090
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1091
    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1092
    iget-object v2, p0, Lcom/tapjoy/internal/is;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, p3}, Lcom/tapjoy/internal/is;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1094
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/tapjoy/internal/is;->f:Landroid/widget/ImageView;

    .line 1095
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1097
    iget-object v2, p0, Lcom/tapjoy/internal/is;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {p3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1098
    iget-object v2, p0, Lcom/tapjoy/internal/is;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {p3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1099
    iget-object v2, p0, Lcom/tapjoy/internal/is;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p3}, Lcom/tapjoy/internal/is;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1101
    iget-object p3, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object p3, p3, Lcom/tapjoy/internal/hw;->m:Lcom/tapjoy/internal/hx;

    if-eqz p3, :cond_be

    iget-object p3, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object p3, p3, Lcom/tapjoy/internal/hw;->m:Lcom/tapjoy/internal/hx;

    .line 2024
    iget-object v2, p3, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hz;

    if-eqz v2, :cond_92

    iget-object v2, p3, Lcom/tapjoy/internal/hx;->b:Landroid/graphics/Point;

    if-nez v2, :cond_91

    iget-object p3, p3, Lcom/tapjoy/internal/hx;->c:Landroid/graphics/Point;

    if-eqz p3, :cond_92

    :cond_91
    goto :goto_93

    :cond_92
    const/4 v0, 0x0

    .line 1101
    :goto_93
    if-eqz v0, :cond_be

    .line 1102
    new-instance p3, Lcom/tapjoy/internal/ip;

    invoke-direct {p3, p1}, Lcom/tapjoy/internal/ip;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/tapjoy/internal/is;->g:Lcom/tapjoy/internal/ip;

    .line 1103
    invoke-virtual {p3, p0}, Lcom/tapjoy/internal/ip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1105
    const/4 p3, 0x5

    iget-object v0, p0, Lcom/tapjoy/internal/is;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1106
    const/16 p3, 0x8

    iget-object v0, p0, Lcom/tapjoy/internal/is;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1107
    iget-object p3, p0, Lcom/tapjoy/internal/is;->g:Lcom/tapjoy/internal/ip;

    invoke-virtual {p0, p3, p1}, Lcom/tapjoy/internal/is;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    :cond_be
    iget-object p1, p0, Lcom/tapjoy/internal/is;->f:Landroid/widget/ImageView;

    iget-object p3, p2, Lcom/tapjoy/internal/hw;->c:Lcom/tapjoy/internal/hz;

    .line 2045
    iget-object p3, p3, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    iget-object p1, p0, Lcom/tapjoy/internal/is;->g:Lcom/tapjoy/internal/ip;

    if-eqz p1, :cond_e0

    iget-object p1, p2, Lcom/tapjoy/internal/hw;->m:Lcom/tapjoy/internal/hx;

    if-eqz p1, :cond_e0

    iget-object p1, p2, Lcom/tapjoy/internal/hw;->m:Lcom/tapjoy/internal/hx;

    iget-object p1, p1, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hz;

    if-eqz p1, :cond_e0

    .line 70
    iget-object p1, p0, Lcom/tapjoy/internal/is;->g:Lcom/tapjoy/internal/ip;

    iget-object p2, p2, Lcom/tapjoy/internal/hw;->m:Lcom/tapjoy/internal/hx;

    iget-object p2, p2, Lcom/tapjoy/internal/hx;->a:Lcom/tapjoy/internal/hz;

    .line 3045
    iget-object p2, p2, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    .line 70
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/ip;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    :cond_e0
    return-void
.end method

.method private a(I)I
    .registers 3

    .line 214
    int-to-float p1, p1

    iget v0, p0, Lcom/tapjoy/internal/is;->b:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/tapjoy/internal/is;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a

    .line 225
    iget-object v0, p0, Lcom/tapjoy/internal/is;->i:Lcom/tapjoy/internal/is$a;

    invoke-interface {v0}, Lcom/tapjoy/internal/is$a;->a()V

    return-void

    .line 226
    :cond_a
    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/tapjoy/internal/is;->g:Lcom/tapjoy/internal/ip;

    if-ne p1, v0, :cond_23

    .line 227
    nop

    .line 9022
    iget-boolean v1, v0, Lcom/tapjoy/internal/ip;->a:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/ip;->a:Z

    .line 9023
    invoke-virtual {v0}, Lcom/tapjoy/internal/ip;->a()V

    .line 9024
    invoke-virtual {v0}, Lcom/tapjoy/internal/ip;->invalidate()V

    .line 228
    iget-object v0, p0, Lcom/tapjoy/internal/is;->i:Lcom/tapjoy/internal/is$a;

    invoke-interface {v0}, Lcom/tapjoy/internal/is$a;->b()V

    return-void

    .line 229
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/tapjoy/internal/hu;

    if-eqz v0, :cond_36

    .line 230
    iget-object v0, p0, Lcom/tapjoy/internal/is;->i:Lcom/tapjoy/internal/is$a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/hu;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/is$a;->a(Lcom/tapjoy/internal/hu;)V

    .line 232
    :cond_36
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 219
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 220
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 143
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 144
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 145
    iget-boolean v2, p0, Lcom/tapjoy/internal/is;->a:Z

    const/high16 v3, 0x43f00000    # 480.0f

    const/high16 v4, 0x43a00000    # 320.0f

    if-eqz v2, :cond_1b

    .line 146
    int-to-float v0, v0

    div-float/2addr v0, v3

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/is;->b:F

    goto :goto_25

    .line 148
    :cond_1b
    int-to-float v0, v0

    div-float/2addr v0, v4

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/is;->b:F

    .line 150
    :goto_25
    nop

    .line 7157
    iget-object v0, p0, Lcom/tapjoy/internal/is;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7158
    iget-boolean v1, p0, Lcom/tapjoy/internal/is;->a:Z

    const/16 v2, 0x1e0

    const/16 v3, 0x140

    if-eqz v1, :cond_39

    const/16 v1, 0x1e0

    goto :goto_3b

    :cond_39
    const/16 v1, 0x140

    :goto_3b
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7159
    iget-boolean v1, p0, Lcom/tapjoy/internal/is;->a:Z

    if-eqz v1, :cond_47

    const/16 v2, 0x140

    :cond_47
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7161
    iget-object v0, p0, Lcom/tapjoy/internal/is;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7162
    iget-boolean v1, p0, Lcom/tapjoy/internal/is;->a:Z

    const/16 v2, 0x1c0

    const/16 v3, 0x122

    if-eqz v1, :cond_60

    const/16 v1, 0x1c0

    goto :goto_62

    :cond_60
    const/16 v1, 0x122

    :goto_62
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7163
    iget-boolean v1, p0, Lcom/tapjoy/internal/is;->a:Z

    if-eqz v1, :cond_6e

    const/16 v2, 0x122

    :cond_6e
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7165
    iget-object v1, p0, Lcom/tapjoy/internal/is;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7166
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7167
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7169
    iget-object v0, p0, Lcom/tapjoy/internal/is;->e:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/tapjoy/internal/ab;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 7170
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 7171
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/hu;

    iget-object v1, v1, Lcom/tapjoy/internal/hu;->a:Landroid/graphics/Rect;

    .line 7172
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 7173
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 7174
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v3}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 7175
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7176
    goto :goto_8e

    .line 7178
    :cond_cd
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v1

    .line 7179
    iget-object v2, p0, Lcom/tapjoy/internal/is;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 7180
    iget-object v2, p0, Lcom/tapjoy/internal/is;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7181
    const/16 v3, 0x1e

    invoke-direct {p0, v3}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7182
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7183
    neg-int v3, v1

    iget-object v4, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object v4, v4, Lcom/tapjoy/internal/hw;->d:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v4}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 7184
    iget-object v4, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object v4, v4, Lcom/tapjoy/internal/hw;->d:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 7186
    iget-object v2, p0, Lcom/tapjoy/internal/is;->g:Lcom/tapjoy/internal/ip;

    if-eqz v2, :cond_17c

    .line 7187
    iget-boolean v2, p0, Lcom/tapjoy/internal/is;->a:Z

    const/16 v3, 0x10

    const/16 v4, 0xf

    if-eqz v2, :cond_115

    const/16 v2, 0x10

    goto :goto_117

    :cond_115
    const/16 v2, 0xf

    :goto_117
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v2

    .line 7188
    iget-boolean v5, p0, Lcom/tapjoy/internal/is;->a:Z

    if-eqz v5, :cond_121

    const/16 v3, 0xf

    :cond_121
    invoke-direct {p0, v3}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v3

    .line 7189
    iget-object v4, p0, Lcom/tapjoy/internal/is;->g:Lcom/tapjoy/internal/ip;

    invoke-virtual {v4, v1, v1, v1, v1}, Lcom/tapjoy/internal/ip;->setPadding(IIII)V

    .line 7190
    iget-object v1, p0, Lcom/tapjoy/internal/is;->g:Lcom/tapjoy/internal/ip;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ip;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7191
    const/16 v4, 0x1a

    invoke-direct {p0, v4}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7192
    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7193
    nop

    .line 7194
    nop

    .line 7195
    iget-object v4, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object v4, v4, Lcom/tapjoy/internal/hw;->m:Lcom/tapjoy/internal/hx;

    if-eqz v4, :cond_16d

    .line 7197
    iget-boolean v4, p0, Lcom/tapjoy/internal/is;->a:Z

    if-eqz v4, :cond_158

    .line 7198
    iget-object v4, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object v4, v4, Lcom/tapjoy/internal/hw;->m:Lcom/tapjoy/internal/hx;

    .line 8029
    iget-object v5, v4, Lcom/tapjoy/internal/hx;->b:Landroid/graphics/Point;

    if-nez v5, :cond_155

    .line 8030
    iget-object v4, v4, Lcom/tapjoy/internal/hx;->c:Landroid/graphics/Point;

    goto :goto_157

    .line 8032
    :cond_155
    iget-object v4, v4, Lcom/tapjoy/internal/hx;->b:Landroid/graphics/Point;

    .line 7198
    :goto_157
    goto :goto_166

    .line 7201
    :cond_158
    iget-object v4, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object v4, v4, Lcom/tapjoy/internal/hw;->m:Lcom/tapjoy/internal/hx;

    .line 8036
    iget-object v5, v4, Lcom/tapjoy/internal/hx;->c:Landroid/graphics/Point;

    if-nez v5, :cond_163

    .line 8037
    iget-object v4, v4, Lcom/tapjoy/internal/hx;->b:Landroid/graphics/Point;

    goto :goto_165

    .line 8039
    :cond_163
    iget-object v4, v4, Lcom/tapjoy/internal/hx;->c:Landroid/graphics/Point;

    .line 7201
    :goto_165
    nop

    .line 7203
    :goto_166
    if-eqz v4, :cond_16d

    .line 7204
    iget v0, v4, Landroid/graphics/Point;->x:I

    .line 7205
    iget v4, v4, Landroid/graphics/Point;->y:I

    goto :goto_16e

    .line 7208
    :cond_16d
    const/4 v4, 0x0

    :goto_16e
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 7209
    invoke-direct {p0, v4}, Lcom/tapjoy/internal/is;->a(I)I

    move-result v0

    add-int/2addr v3, v0

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 151
    :cond_17c
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 152
    return-void
.end method

.method public final setLandscape(Z)V
    .registers 8
    .param p1, "landscape"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/tapjoy/internal/is;->a:Z

    .line 116
    if-eqz p1, :cond_17

    .line 117
    iget-object v0, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object v0, v0, Lcom/tapjoy/internal/hw;->b:Lcom/tapjoy/internal/hz;

    .line 4045
    iget-object v0, v0, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    .line 117
    nop

    .line 118
    iget-object v1, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object v1, v1, Lcom/tapjoy/internal/hw;->f:Lcom/tapjoy/internal/hz;

    .line 5045
    iget-object v1, v1, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    .line 118
    nop

    .line 119
    iget-object v2, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object v2, v2, Lcom/tapjoy/internal/hw;->j:Ljava/util/ArrayList;

    goto :goto_29

    .line 121
    :cond_17
    iget-object v0, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object v0, v0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hz;

    .line 6045
    iget-object v0, v0, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    .line 121
    nop

    .line 122
    iget-object v1, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object v1, v1, Lcom/tapjoy/internal/hw;->e:Lcom/tapjoy/internal/hz;

    .line 7045
    iget-object v1, v1, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    .line 122
    nop

    .line 123
    iget-object v2, p0, Lcom/tapjoy/internal/is;->h:Lcom/tapjoy/internal/hw;

    iget-object v2, v2, Lcom/tapjoy/internal/hw;->i:Ljava/util/ArrayList;

    .line 126
    :goto_29
    iget-object v3, p0, Lcom/tapjoy/internal/is;->c:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v3, v4}, Lcom/tapjoy/internal/aa;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/tapjoy/internal/is;->d:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v3}, Lcom/tapjoy/internal/aa;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lcom/tapjoy/internal/is;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4b

    .line 129
    iget-object v0, p0, Lcom/tapjoy/internal/is;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 131
    :cond_4b
    invoke-virtual {p0}, Lcom/tapjoy/internal/is;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/hu;

    .line 133
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 137
    iget-object v4, p0, Lcom/tapjoy/internal/is;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    goto :goto_53

    .line 139
    :cond_78
    return-void
.end method
