.class public Lcom/mintegral/msdk/base/webview/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"

# interfaces
.implements Lcom/mintegral/msdk/base/webview/a;


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Landroid/graphics/Rect;

.field private c:F

.field private d:F

.field private e:J

.field private f:F

.field private g:Z

.field private h:F

.field private i:F

.field private j:F

.field private k:J

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:J

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Z

.field private v:Lcom/mintegral/msdk/base/webview/a$a;

.field private w:Landroid/os/Handler;

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->b:Landroid/graphics/Rect;

    .line 24
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->d:F

    .line 46
    const-wide/16 v0, 0x19

    iput-wide v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->p:J

    .line 53
    iput-boolean v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->u:Z

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->w:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/mintegral/msdk/base/webview/ProgressBar$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/webview/ProgressBar$1;-><init>(Lcom/mintegral/msdk/base/webview/ProgressBar;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->a:Ljava/lang/Runnable;

    .line 69
    iput-boolean v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->y:Z

    .line 1082
    invoke-virtual {p0, v2}, Lcom/mintegral/msdk/base/webview/ProgressBar;->setWillNotDraw(Z)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->b:Landroid/graphics/Rect;

    .line 24
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->d:F

    .line 46
    const-wide/16 v0, 0x19

    iput-wide v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->p:J

    .line 53
    iput-boolean v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->u:Z

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->w:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/mintegral/msdk/base/webview/ProgressBar$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/webview/ProgressBar$1;-><init>(Lcom/mintegral/msdk/base/webview/ProgressBar;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->a:Ljava/lang/Runnable;

    .line 69
    iput-boolean v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->y:Z

    .line 2082
    invoke-virtual {p0, v2}, Lcom/mintegral/msdk/base/webview/ProgressBar;->setWillNotDraw(Z)V

    .line 79
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3d4ccccd    # 0.05f

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 91
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->u:Z

    if-nez v0, :cond_11

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->u:Z

    .line 95
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 96
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->y:Z

    if-eqz v0, :cond_18c

    const-wide/16 v0, 0x0

    .line 97
    :goto_1b
    long-to-float v8, v0

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iput v8, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->f:F

    .line 98
    iput-wide v6, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->e:J

    .line 99
    iget-wide v6, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->k:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->k:J

    .line 2122
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->g:Z

    if-nez v0, :cond_1b0

    .line 2123
    iget-wide v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->k:J

    const-wide/16 v6, 0x7d0

    cmp-long v0, v0, v6

    if-gez v0, :cond_1ad

    .line 2124
    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_197

    .line 2125
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->x:Z

    if-eqz v0, :cond_192

    move v0, v2

    .line 101
    :goto_42
    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->j:F

    .line 106
    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->i:F

    iget v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->j:F

    iget v6, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->f:F

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->i:F

    .line 108
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->g:Z

    if-nez v0, :cond_5e

    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->i:F

    iget v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5e

    .line 109
    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->d:F

    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->i:F

    .line 112
    :cond_5e
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->b:Landroid/graphics/Rect;

    iget v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->i:F

    iget v6, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->c:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 114
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->a:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->p:J

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 118
    iget v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->f:F

    .line 2212
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->g:Z

    if-eqz v0, :cond_c2

    .line 2214
    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->h:F

    const/high16 v6, 0x3f000000    # 0.5f

    iget v7, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->c:F

    mul-float/2addr v6, v7

    div-float/2addr v0, v6

    sub-float v0, v2, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 2216
    if-gez v0, :cond_91

    move v0, v5

    .line 2219
    :cond_91
    iget v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->h:F

    const/high16 v6, 0x3f000000    # 0.5f

    iget v7, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->c:F

    mul-float/2addr v6, v7

    cmpl-float v2, v2, v6

    if-lez v2, :cond_9f

    .line 2220
    invoke-virtual {p0, v5}, Lcom/mintegral/msdk/base/webview/ProgressBar;->setVisible(Z)V

    .line 2223
    :cond_9f
    iget-object v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a8

    .line 2224
    iget-object v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2226
    :cond_a8
    iget-object v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b1

    .line 2227
    iget-object v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2229
    :cond_b1
    iget-object v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_ba

    .line 2230
    iget-object v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2232
    :cond_ba
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2233
    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->h:F

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2236
    :cond_c2
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_eb

    .line 2237
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    .line 2238
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 2239
    iget-object v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    .line 2240
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 2239
    invoke-virtual {v2, v5, v5, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2241
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2244
    :cond_eb
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->g:Z

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_118

    .line 2246
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 2247
    iget-object v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->s:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->s:Landroid/graphics/drawable/Drawable;

    .line 2248
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 2247
    invoke-virtual {v2, v5, v5, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2249
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2250
    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2251
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2255
    :cond_118
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_136

    .line 2256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2257
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2260
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 2257
    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2261
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2265
    :cond_136
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->g:Z

    if-nez v0, :cond_184

    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->i:F

    iget v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->d:F

    sub-float/2addr v0, v2

    .line 2266
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_184

    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_184

    .line 2268
    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->l:I

    int-to-float v0, v0

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->l:I

    .line 2270
    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->l:I

    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->b:Landroid/graphics/Rect;

    .line 2271
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v0, v1, :cond_173

    .line 2272
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->l:I

    .line 2275
    :cond_173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2276
    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->l:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2277
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2278
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2281
    :cond_184
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->g:Z

    if-eqz v0, :cond_18b

    .line 2282
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 119
    :cond_18b
    return-void

    .line 96
    :cond_18c
    iget-wide v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->e:J

    sub-long v0, v6, v0

    goto/16 :goto_1b

    .line 2125
    :cond_192
    const v0, 0x3ecccccd    # 0.4f

    goto/16 :goto_42

    .line 2126
    :cond_197
    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a3

    .line 2127
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->x:Z

    if-nez v0, :cond_1b7

    move v0, v3

    goto/16 :goto_42

    .line 2129
    :cond_1a3
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->x:Z

    if-eqz v0, :cond_1aa

    move v0, v3

    goto/16 :goto_42

    :cond_1aa
    move v0, v4

    goto/16 :goto_42

    :cond_1ad
    move v0, v4

    .line 2132
    goto/16 :goto_42

    .line 2135
    :cond_1b0
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->x:Z

    if-eqz v0, :cond_1b7

    move v0, v2

    goto/16 :goto_42

    :cond_1b7
    const v0, 0x3ecccccd    # 0.4f

    goto/16 :goto_42
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()F
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->i:F

    return v0
.end method

.method public initResource(Z)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 148
    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 180
    :cond_13
    :goto_13
    return-void

    .line 154
    :cond_14
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mintegral_cm_highlight"

    const-string v3, "drawable"

    .line 157
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    .line 158
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_47

    .line 159
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    .line 160
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    .line 161
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 159
    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    :cond_47
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mintegral_cm_head"

    const-string v3, "drawable"

    .line 166
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    .line 167
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7a

    .line 168
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 168
    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 173
    :cond_7a
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mintegral_cm_tail"

    const-string v3, "drawable"

    .line 175
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mintegral_cm_end_animation"

    const-string v3, "drawable"

    .line 179
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->s:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_13
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .prologue
    .line 206
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 208
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 186
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .prologue
    .line 418
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 420
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->c:F

    .line 421
    return-void
.end method

.method public onThemeChange()V
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->u:Z

    if-eqz v0, :cond_8

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->initResource(Z)V

    .line 144
    :cond_8
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 190
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 192
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 193
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    .line 194
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 195
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getHeight()I

    move-result v2

    .line 193
    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    :cond_1c
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2d

    .line 199
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 201
    :cond_2d
    return-void
.end method

.method public setPaused(Z)V
    .registers 4

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->y:Z

    .line 426
    if-nez p1, :cond_a

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->e:J

    .line 429
    :cond_a
    return-void
.end method

.method public setProgress(FZ)V
    .registers 4

    .prologue
    .line 296
    if-eqz p2, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_b

    .line 297
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->startEndAnimation()V

    .line 299
    :cond_b
    return-void
.end method

.method public setProgressBarListener(Lcom/mintegral/msdk/base/webview/a$a;)V
    .registers 2

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->v:Lcom/mintegral/msdk/base/webview/a$a;

    .line 360
    return-void
.end method

.method public setProgressState(I)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 382
    packed-switch p1, :pswitch_data_2c

    .line 414
    :cond_7
    :goto_7
    return-void

    .line 384
    :pswitch_8
    iput v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->m:I

    .line 385
    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->n:I

    .line 386
    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->o:I

    .line 389
    iput-wide v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->k:J

    goto :goto_7

    .line 393
    :pswitch_11
    iput v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->n:I

    .line 394
    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->o:I

    if-ne v0, v1, :cond_1a

    .line 395
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->startEndAnimation()V

    .line 397
    :cond_1a
    iput-wide v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->k:J

    goto :goto_7

    .line 401
    :pswitch_1d
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->startEndAnimation()V

    goto :goto_7

    .line 405
    :pswitch_21
    iput v1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->o:I

    .line 406
    iget v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->n:I

    if-ne v0, v1, :cond_7

    .line 407
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->startEndAnimation()V

    goto :goto_7

    .line 382
    nop

    :pswitch_data_2c
    .packed-switch 0x5
        :pswitch_8
        :pswitch_11
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public setVisibility(I)V
    .registers 2

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    return-void
.end method

.method public setVisible(Z)V
    .registers 7

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 303
    if-eqz p1, :cond_5c

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->x:Z

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->e:J

    .line 310
    iput v3, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->f:F

    .line 311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->k:J

    .line 313
    iput-boolean v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->g:Z

    .line 314
    iput v3, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->h:F

    .line 315
    iput v3, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->i:F

    .line 316
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->c:F

    .line 318
    iput-boolean v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->y:Z

    .line 320
    iput v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->m:I

    .line 321
    iput v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->n:I

    .line 322
    iput v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->o:I

    .line 324
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_59

    .line 325
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->l:I

    .line 330
    :goto_37
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_40

    .line 331
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 334
    :cond_40
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_49

    .line 335
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 338
    :cond_49
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_52

    .line 339
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 342
    :cond_52
    invoke-virtual {p0, v2}, Lcom/mintegral/msdk/base/webview/ProgressBar;->setVisibility(I)V

    .line 343
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->invalidate()V

    .line 350
    :goto_58
    return-void

    .line 327
    :cond_59
    iput v2, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->l:I

    goto :goto_37

    .line 348
    :cond_5c
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->setVisibility(I)V

    goto :goto_58
.end method

.method public startEndAnimation()V
    .registers 2

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->g:Z

    if-nez v0, :cond_a

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->g:Z

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar;->h:F

    .line 292
    :cond_a
    return-void
.end method
