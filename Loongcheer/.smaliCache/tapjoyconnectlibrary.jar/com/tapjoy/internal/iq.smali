.class public final Lcom/tapjoy/internal/iq;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/iq$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tapjoy/internal/ht;

.field private b:Lcom/tapjoy/internal/iq$a;

.field private c:Lcom/tapjoy/internal/z;

.field private d:I

.field private e:I

.field private f:Lcom/tapjoy/internal/ic;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tapjoy/internal/ii;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tapjoy/internal/ii;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/ht;Lcom/tapjoy/internal/iq$a;)V
    .registers 4

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    sget-object p1, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/z;

    iput-object p1, p0, Lcom/tapjoy/internal/iq;->c:Lcom/tapjoy/internal/z;

    .line 33
    const/4 p1, 0x0

    iput p1, p0, Lcom/tapjoy/internal/iq;->d:I

    .line 34
    iput p1, p0, Lcom/tapjoy/internal/iq;->e:I

    .line 35
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/iq;->f:Lcom/tapjoy/internal/ic;

    .line 36
    iput-object p1, p0, Lcom/tapjoy/internal/iq;->g:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/tapjoy/internal/iq;->h:Ljava/util/ArrayList;

    .line 41
    iput-object p2, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/ht;

    .line 42
    iput-object p3, p0, Lcom/tapjoy/internal/iq;->b:Lcom/tapjoy/internal/iq$a;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/iq;)Lcom/tapjoy/internal/iq$a;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/tapjoy/internal/iq;->b:Lcom/tapjoy/internal/iq$a;

    return-object p0
.end method

.method private a()V
    .registers 6

    .line 124
    nop

    .line 125
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->a:Lcom/tapjoy/internal/ht;

    iget-object v0, v0, Lcom/tapjoy/internal/ht;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ic;

    .line 126
    iget-object v3, v2, Lcom/tapjoy/internal/ic;->a:Lcom/tapjoy/internal/z;

    iget-object v4, p0, Lcom/tapjoy/internal/iq;->c:Lcom/tapjoy/internal/z;

    if-ne v3, v4, :cond_1f

    .line 127
    nop

    .line 128
    move-object v1, v2

    goto :goto_27

    .line 130
    :cond_1f
    iget-object v3, v2, Lcom/tapjoy/internal/ic;->a:Lcom/tapjoy/internal/z;

    sget-object v4, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/z;

    if-ne v3, v4, :cond_26

    .line 131
    move-object v1, v2

    .line 133
    :cond_26
    goto :goto_a

    .line 135
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/tapjoy/internal/iq;->removeAllViews()V

    .line 137
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_4f

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 139
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ii;

    .line 140
    if-eqz v2, :cond_49

    .line 141
    invoke-virtual {v2}, Lcom/tapjoy/internal/ii;->c()V

    .line 143
    :cond_49
    goto :goto_32

    .line 144
    :cond_4a
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    :cond_4f
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_74

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 149
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ii;

    .line 150
    if-eqz v2, :cond_6e

    .line 151
    invoke-virtual {v2}, Lcom/tapjoy/internal/ii;->c()V

    .line 153
    :cond_6e
    goto :goto_57

    .line 154
    :cond_6f
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 157
    :cond_74
    if-eqz v1, :cond_79

    .line 158
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/iq;->a(Lcom/tapjoy/internal/ic;)V

    .line 159
    :cond_79
    return-void
.end method

.method private a(Lcom/tapjoy/internal/ic;)V
    .registers 17

    .line 162
    move-object v6, p0

    move-object/from16 v0, p1

    iput-object v0, v6, Lcom/tapjoy/internal/iq;->f:Lcom/tapjoy/internal/ic;

    .line 164
    invoke-virtual {p0}, Lcom/tapjoy/internal/iq;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 165
    iget-object v0, v0, Lcom/tapjoy/internal/ic;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/tapjoy/internal/ib;

    .line 166
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-direct {v10, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 170
    iget-object v0, v9, Lcom/tapjoy/internal/ib;->l:Lcom/tapjoy/internal/hz;

    .line 2048
    iget-object v0, v0, Lcom/tapjoy/internal/hz;->c:[B

    .line 170
    const/4 v1, 0x0

    if-eqz v0, :cond_54

    .line 171
    new-instance v0, Lcom/tapjoy/internal/ii;

    invoke-direct {v0, v7}, Lcom/tapjoy/internal/ii;-><init>(Landroid/content/Context;)V

    .line 172
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/ii;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 173
    iget-object v2, v9, Lcom/tapjoy/internal/ib;->l:Lcom/tapjoy/internal/hz;

    .line 2050
    iget-object v2, v2, Lcom/tapjoy/internal/hz;->d:Lcom/tapjoy/internal/ig;

    .line 174
    iget-object v3, v9, Lcom/tapjoy/internal/ib;->l:Lcom/tapjoy/internal/hz;

    .line 3048
    iget-object v3, v3, Lcom/tapjoy/internal/hz;->c:[B

    .line 173
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/ii;->a(Lcom/tapjoy/internal/ig;[B)V

    .line 175
    iget-object v2, v6, Lcom/tapjoy/internal/iq;->g:Ljava/util/ArrayList;

    if-nez v2, :cond_48

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/tapjoy/internal/iq;->g:Ljava/util/ArrayList;

    .line 178
    :cond_48
    iget-object v2, v6, Lcom/tapjoy/internal/iq;->g:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v0

    goto :goto_55

    .line 181
    :cond_54
    move-object v11, v1

    .line 184
    :goto_55
    iget-object v0, v9, Lcom/tapjoy/internal/ib;->m:Lcom/tapjoy/internal/hz;

    if-eqz v0, :cond_8b

    iget-object v0, v9, Lcom/tapjoy/internal/ib;->m:Lcom/tapjoy/internal/hz;

    .line 4048
    iget-object v0, v0, Lcom/tapjoy/internal/hz;->c:[B

    .line 184
    if-eqz v0, :cond_8b

    .line 185
    new-instance v0, Lcom/tapjoy/internal/ii;

    invoke-direct {v0, v7}, Lcom/tapjoy/internal/ii;-><init>(Landroid/content/Context;)V

    .line 186
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/ii;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 187
    iget-object v2, v9, Lcom/tapjoy/internal/ib;->m:Lcom/tapjoy/internal/hz;

    .line 4050
    iget-object v2, v2, Lcom/tapjoy/internal/hz;->d:Lcom/tapjoy/internal/ig;

    .line 188
    iget-object v3, v9, Lcom/tapjoy/internal/ib;->m:Lcom/tapjoy/internal/hz;

    .line 5048
    iget-object v3, v3, Lcom/tapjoy/internal/hz;->c:[B

    .line 187
    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/ii;->a(Lcom/tapjoy/internal/ig;[B)V

    .line 189
    iget-object v2, v6, Lcom/tapjoy/internal/iq;->h:Ljava/util/ArrayList;

    if-nez v2, :cond_7f

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/tapjoy/internal/iq;->h:Ljava/util/ArrayList;

    .line 192
    :cond_7f
    iget-object v2, v6, Lcom/tapjoy/internal/iq;->h:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v0

    goto :goto_8c

    .line 195
    :cond_8b
    move-object v12, v1

    .line 198
    :goto_8c
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {v13, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 199
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    iget-object v2, v9, Lcom/tapjoy/internal/ib;->l:Lcom/tapjoy/internal/hz;

    .line 6045
    iget-object v2, v2, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    .line 201
    nop

    .line 202
    iget-object v3, v9, Lcom/tapjoy/internal/ib;->m:Lcom/tapjoy/internal/hz;

    if-eqz v3, :cond_a6

    iget-object v3, v9, Lcom/tapjoy/internal/ib;->m:Lcom/tapjoy/internal/hz;

    .line 7045
    iget-object v3, v3, Lcom/tapjoy/internal/hz;->b:Landroid/graphics/Bitmap;

    .line 203
    goto :goto_a7

    :cond_a6
    move-object v3, v1

    .line 205
    :goto_a7
    if-eqz v2, :cond_b0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v5, v4

    goto :goto_b1

    :cond_b0
    move-object v5, v1

    .line 207
    :goto_b1
    if-eqz v3, :cond_ba

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v3, v2

    goto :goto_bb

    :cond_ba
    move-object v3, v1

    .line 210
    :goto_bb
    if-eqz v5, :cond_c0

    .line 211
    invoke-static {v10, v5}, Lcom/tapjoy/internal/aa;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_c0
    if-eqz v11, :cond_c8

    .line 214
    invoke-virtual {v10, v11, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {v11}, Lcom/tapjoy/internal/ii;->a()V

    .line 217
    :cond_c8
    if-eqz v12, :cond_d1

    .line 218
    invoke-virtual {v10, v12, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    const/4 v0, 0x4

    invoke-virtual {v12, v0}, Lcom/tapjoy/internal/ii;->setVisibility(I)V

    .line 222
    :cond_d1
    new-instance v14, Lcom/tapjoy/internal/iq$1;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v12

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/internal/iq$1;-><init>(Lcom/tapjoy/internal/iq;Lcom/tapjoy/internal/ii;Landroid/graphics/drawable/BitmapDrawable;Lcom/tapjoy/internal/ii;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    new-instance v14, Lcom/tapjoy/internal/iq$2;

    move-object v0, v14

    move-object v3, v10

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/internal/iq$2;-><init>(Lcom/tapjoy/internal/iq;Lcom/tapjoy/internal/ii;Landroid/widget/RelativeLayout;Lcom/tapjoy/internal/ii;Lcom/tapjoy/internal/ib;)V

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-virtual {v10, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p0, v10, v13}, Lcom/tapjoy/internal/iq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    goto/16 :goto_f

    .line 297
    :cond_f0
    return-void
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .registers 2

    .line 49
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 50
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->b:Lcom/tapjoy/internal/iq$a;

    invoke-interface {v0}, Lcom/tapjoy/internal/iq$a;->a()V

    .line 51
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 55
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 56
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 58
    if-lt v1, v2, :cond_1a

    .line 59
    iget-object v3, v0, Lcom/tapjoy/internal/iq;->c:Lcom/tapjoy/internal/z;

    sget-object v4, Lcom/tapjoy/internal/z;->c:Lcom/tapjoy/internal/z;

    if-eq v3, v4, :cond_27

    .line 60
    sget-object v3, Lcom/tapjoy/internal/z;->c:Lcom/tapjoy/internal/z;

    iput-object v3, v0, Lcom/tapjoy/internal/iq;->c:Lcom/tapjoy/internal/z;

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/internal/iq;->a()V

    goto :goto_27

    .line 65
    :cond_1a
    iget-object v3, v0, Lcom/tapjoy/internal/iq;->c:Lcom/tapjoy/internal/z;

    sget-object v4, Lcom/tapjoy/internal/z;->b:Lcom/tapjoy/internal/z;

    if-eq v3, v4, :cond_27

    .line 66
    sget-object v3, Lcom/tapjoy/internal/z;->b:Lcom/tapjoy/internal/z;

    iput-object v3, v0, Lcom/tapjoy/internal/iq;->c:Lcom/tapjoy/internal/z;

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/internal/iq;->a()V

    .line 71
    :cond_27
    :goto_27
    iget v3, v0, Lcom/tapjoy/internal/iq;->d:I

    if-ne v3, v1, :cond_2f

    iget v3, v0, Lcom/tapjoy/internal/iq;->e:I

    if-eq v3, v2, :cond_11f

    .line 72
    :cond_2f
    iput v1, v0, Lcom/tapjoy/internal/iq;->d:I

    .line 73
    iput v2, v0, Lcom/tapjoy/internal/iq;->e:I

    .line 74
    nop

    .line 1300
    nop

    .line 1301
    int-to-float v1, v1

    .line 1302
    int-to-float v2, v2

    .line 1303
    iget-object v3, v0, Lcom/tapjoy/internal/iq;->f:Lcom/tapjoy/internal/ic;

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_89

    iget-object v3, v3, Lcom/tapjoy/internal/ic;->b:Landroid/graphics/PointF;

    if-eqz v3, :cond_89

    .line 1304
    iget-object v3, v0, Lcom/tapjoy/internal/iq;->f:Lcom/tapjoy/internal/ic;

    iget-object v3, v3, Lcom/tapjoy/internal/ic;->b:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v3, v3, v1

    iget-object v6, v0, Lcom/tapjoy/internal/iq;->f:Lcom/tapjoy/internal/ic;

    iget-object v6, v6, Lcom/tapjoy/internal/ic;->b:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v6

    div-float/2addr v3, v2

    .line 1305
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v3, v6

    if-gez v7, :cond_70

    .line 1307
    iget-object v3, v0, Lcom/tapjoy/internal/iq;->f:Lcom/tapjoy/internal/ic;

    iget-object v3, v3, Lcom/tapjoy/internal/ic;->b:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v3, v3, v1

    iget-object v6, v0, Lcom/tapjoy/internal/iq;->f:Lcom/tapjoy/internal/ic;

    iget-object v6, v6, Lcom/tapjoy/internal/ic;->b:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v6

    .line 1308
    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 1309
    nop

    .line 1310
    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_8a

    .line 1311
    :cond_70
    cmpl-float v3, v3, v6

    if-lez v3, :cond_89

    .line 1313
    iget-object v3, v0, Lcom/tapjoy/internal/iq;->f:Lcom/tapjoy/internal/ic;

    iget-object v3, v3, Lcom/tapjoy/internal/ic;->b:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, v2

    iget-object v6, v0, Lcom/tapjoy/internal/iq;->f:Lcom/tapjoy/internal/ic;

    iget-object v6, v6, Lcom/tapjoy/internal/ic;->b:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v6

    .line 1314
    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    .line 1315
    move v4, v1

    move v1, v3

    const/4 v3, 0x0

    goto :goto_8a

    .line 1318
    :cond_89
    const/4 v3, 0x0

    :goto_8a
    invoke-static/range {p0 .. p0}, Lcom/tapjoy/internal/ab;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_92
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1319
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1320
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/internal/ib;

    .line 1322
    iget-object v9, v7, Lcom/tapjoy/internal/ib;->a:Lcom/tapjoy/internal/id;

    invoke-virtual {v9, v1, v2}, Lcom/tapjoy/internal/id;->a(FF)F

    move-result v9

    .line 1323
    iget-object v10, v7, Lcom/tapjoy/internal/ib;->b:Lcom/tapjoy/internal/id;

    invoke-virtual {v10, v1, v2}, Lcom/tapjoy/internal/id;->a(FF)F

    move-result v10

    .line 1324
    iget-object v11, v7, Lcom/tapjoy/internal/ib;->c:Lcom/tapjoy/internal/id;

    invoke-virtual {v11, v1, v2}, Lcom/tapjoy/internal/id;->a(FF)F

    move-result v11

    .line 1325
    iget-object v12, v7, Lcom/tapjoy/internal/ib;->d:Lcom/tapjoy/internal/id;

    invoke-virtual {v12, v1, v2}, Lcom/tapjoy/internal/id;->a(FF)F

    move-result v12

    .line 1327
    iget v13, v7, Lcom/tapjoy/internal/ib;->e:I

    .line 1328
    iget v7, v7, Lcom/tapjoy/internal/ib;->f:I

    .line 1330
    const/16 v14, 0xe

    if-ne v13, v14, :cond_d1

    .line 1331
    nop

    .line 1332
    sub-float v13, v1, v11

    div-float/2addr v13, v5

    add-float/2addr v9, v13

    const/16 v13, 0x9

    .line 1334
    :cond_d1
    const/16 v14, 0xf

    const/16 v15, 0xa

    if-ne v7, v14, :cond_de

    .line 1335
    nop

    .line 1336
    sub-float v7, v2, v12

    div-float/2addr v7, v5

    add-float/2addr v10, v7

    const/16 v7, 0xa

    .line 1339
    :cond_de
    const/4 v14, -0x1

    invoke-virtual {v8, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1340
    invoke-virtual {v8, v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1341
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1342
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1344
    const/16 v11, 0x9

    if-ne v13, v11, :cond_fd

    .line 1345
    add-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_108

    .line 1347
    :cond_fd
    const/16 v11, 0xb

    if-ne v13, v11, :cond_108

    .line 1348
    add-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1351
    :cond_108
    :goto_108
    if-ne v7, v15, :cond_112

    .line 1352
    add-float/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_92

    .line 1354
    :cond_112
    const/16 v9, 0xc

    if-ne v7, v9, :cond_11d

    .line 1355
    add-float/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1357
    :cond_11d
    goto/16 :goto_92

    .line 77
    :cond_11f
    invoke-super/range {p0 .. p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 78
    return-void
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .registers 6
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 82
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 83
    if-nez p2, :cond_4e

    .line 84
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 86
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/ii;

    .line 87
    if-eqz v1, :cond_28

    .line 88
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/ii;->setVisibility(I)V

    .line 89
    invoke-virtual {v1}, Lcom/tapjoy/internal/ii;->b()V

    .line 91
    :cond_28
    goto :goto_d

    .line 93
    :cond_29
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_8e

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 95
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/ii;

    .line 96
    if-eqz v1, :cond_4c

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/ii;->setVisibility(I)V

    .line 98
    invoke-virtual {v1}, Lcom/tapjoy/internal/ii;->a()V

    .line 100
    :cond_4c
    goto :goto_31

    :cond_4d
    return-void

    .line 104
    :cond_4e
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_6e

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 106
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/ii;

    .line 107
    if-eqz v1, :cond_6d

    .line 108
    invoke-virtual {v1}, Lcom/tapjoy/internal/ii;->b()V

    .line 110
    :cond_6d
    goto :goto_56

    .line 112
    :cond_6e
    iget-object v0, p0, Lcom/tapjoy/internal/iq;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_8e

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 114
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/ii;

    .line 115
    if-eqz v1, :cond_8d

    .line 116
    invoke-virtual {v1}, Lcom/tapjoy/internal/ii;->b()V

    .line 118
    :cond_8d
    goto :goto_76

    .line 121
    :cond_8e
    return-void
.end method
