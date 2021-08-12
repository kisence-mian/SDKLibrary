.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
.source "NativeExpressVideoView.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:I

.field e:Z

.field private v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

.field private w:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

.field private x:J

.field private y:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .registers 5

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    .line 35
    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a:I

    .line 36
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->b:Z

    .line 37
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->c:Z

    .line 39
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->e:Z

    .line 43
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->e()V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;)Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->w:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;Lcom/bytedance/sdk/openadsdk/core/d/o;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->c(Lcom/bytedance/sdk/openadsdk/core/d/o;)V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/d/o;)V
    .registers 4

    .line 156
    if-nez p1, :cond_3

    .line 157
    return-void

    .line 159
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 160
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->c(Lcom/bytedance/sdk/openadsdk/core/d/o;)V

    goto :goto_22

    .line 163
    :cond_11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;Lcom/bytedance/sdk/openadsdk/core/d/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    :goto_22
    return-void
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/core/d/o;)V
    .registers 10

    .line 174
    if-nez p1, :cond_3

    .line 175
    return-void

    .line 177
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->e()D

    move-result-wide v0

    .line 178
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->f()D

    move-result-wide v2

    .line 179
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->g()D

    move-result-wide v4

    .line 180
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->h()D

    move-result-wide v6

    .line 182
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->g:Landroid/content/Context;

    double-to-float v0, v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->g:Landroid/content/Context;

    double-to-float v1, v2

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 184
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->g:Landroid/content/Context;

    double-to-float v2, v4

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 185
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->g:Landroid/content/Context;

    double-to-float v3, v6

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 186
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 187
    if-nez v3, :cond_42

    .line 188
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 190
    :cond_42
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 191
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 192
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 193
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 194
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 196
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    if-eqz p1, :cond_85

    .line 197
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->n:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 198
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->a(JZZ)Z

    .line 199
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->d:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a(I)V

    .line 202
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_82

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->c:Z

    if-nez p1, :cond_82

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->e:Z

    if-eqz p1, :cond_82

    .line 203
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->e()V

    .line 205
    :cond_82
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->setShowAdInteractionView(Z)V

    .line 207
    :cond_85
    return-void
.end method

.method private n()V
    .registers 5

    .line 58
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/b/a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->w:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    .line 59
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->l:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setShouldCheckNetChange(Z)V

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setVideoAdLoadListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;)V

    .line 73
    const-string v0, "embeded_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_84

    const/4 v1, 0x1

    const-string v2, "splash_ad"

    if-eqz v0, :cond_4c

    .line 74
    :try_start_39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->b:Z

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->k:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isAutoPlay()Z

    move-result v3

    goto :goto_48

    :cond_46
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->c:Z

    :goto_48
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setIsAutoPlay(Z)V

    goto :goto_61

    .line 75
    :cond_4c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setIsAutoPlay(Z)V

    goto :goto_61

    .line 78
    :cond_5a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->c:Z

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setIsAutoPlay(Z)V

    .line 80
    :goto_61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setIsQuiet(Z)V

    goto :goto_7e

    .line 83
    :cond_6f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->d:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setIsQuiet(Z)V

    .line 85
    :goto_7e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->d()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_83} :catch_84

    .line 89
    goto :goto_a4

    .line 86
    :catch_84
    move-exception v0

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uff08dev ignore\uff09ExpressVideoView-->print:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeExpressVideoView"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_a4
    return-void
.end method

.method private setShowAdInteractionView(Z)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    if-eqz v0, :cond_7

    .line 137
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setShowAdInteractionView(Z)V

    .line 139
    :cond_7
    return-void
.end method


# virtual methods
.method public Q()V
    .registers 3

    .line 220
    const-string v0, "NativeExpressVideoView"

    const-string v1, "onSkipVideo"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public R()J
    .registers 3

    .line 287
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->x:J

    return-wide v0
.end method

.method public S()I
    .registers 3

    .line 293
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    if-eqz v0, :cond_c

    .line 295
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->d()V

    .line 299
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->x()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 300
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_1c
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a:I

    return v0
.end method

.method public T()V
    .registers 1

    .line 309
    return-void
.end method

.method a(I)V
    .registers 6

    .line 100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->c(I)I

    move-result p1

    .line 102
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne v0, p1, :cond_11

    .line 103
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->b:Z

    .line 104
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->c:Z

    goto :goto_3c

    .line 105
    :cond_11
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1f

    .line 106
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->b:Z

    .line 107
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->c:Z

    goto :goto_3c

    .line 108
    :cond_1f
    const/4 v3, 0x2

    if-ne v3, p1, :cond_37

    .line 109
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_32

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 110
    :cond_32
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->b:Z

    .line 111
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->c:Z

    goto :goto_3c

    .line 113
    :cond_37
    const/4 v1, 0x4

    if-ne v1, p1, :cond_3c

    .line 114
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->b:Z

    .line 118
    :cond_3c
    :goto_3c
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->c:Z

    if-nez v1, :cond_42

    .line 119
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a:I

    .line 121
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAutoPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NativeVideoAdView"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public a(II)V
    .registers 5

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoError,errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",extraCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeExpressVideoView"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    if-eqz v0, :cond_2b

    .line 380
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;->onVideoError(II)V

    .line 383
    :cond_2b
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->y:J

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->x:J

    .line 384
    const/4 p1, 0x4

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a:I

    .line 385
    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V
    .registers 5

    .line 253
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1c

    if-nez p2, :cond_6

    goto :goto_1c

    .line 256
    :cond_6
    packed-switch p1, :pswitch_data_1e

    goto :goto_18

    .line 258
    :pswitch_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->j:Ljava/lang/String;

    const-string v1, "draw_ad"

    if-ne v0, v1, :cond_18

    .line 259
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    if-eqz p1, :cond_17

    .line 260
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->performClick()Z

    .line 262
    :cond_17
    return-void

    .line 265
    :cond_18
    :goto_18
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 266
    return-void

    .line 254
    :cond_1c
    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x4
        :pswitch_a
    .end packed-switch
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/core/d/j;Z)V
    .registers 6

    .line 270
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1c

    if-nez p2, :cond_6

    goto :goto_1c

    .line 273
    :cond_6
    packed-switch p1, :pswitch_data_1e

    goto :goto_18

    .line 275
    :pswitch_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->j:Ljava/lang/String;

    const-string v1, "draw_ad"

    if-ne v0, v1, :cond_18

    .line 276
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    if-eqz p1, :cond_17

    .line 277
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->performClick()Z

    .line 279
    :cond_17
    return-void

    .line 282
    :cond_18
    :goto_18
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(ILcom/bytedance/sdk/openadsdk/core/d/j;Z)V

    .line 283
    return-void

    .line 271
    :cond_1c
    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x4
        :pswitch_a
    .end packed-switch
.end method

.method public a(JJ)V
    .registers 7

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->e:Z

    .line 346
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    if-eqz v0, :cond_c

    .line 347
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;->onProgressUpdate(JJ)V

    .line 349
    :cond_c
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->x:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1d

    .line 352
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a:I

    .line 354
    :cond_1d
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->x:J

    .line 355
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->y:J

    .line 356
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/o;)V
    .registers 3

    .line 149
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 150
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->b(Lcom/bytedance/sdk/openadsdk/core/d/o;)V

    .line 152
    :cond_b
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(Lcom/bytedance/sdk/openadsdk/core/d/o;)V

    .line 153
    return-void
.end method

.method protected b()V
    .registers 2

    .line 143
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->b()V

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->i:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 145
    return-void
.end method

.method public c()V
    .registers 4

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->e:Z

    .line 335
    const-string v1, "NativeExpressVideoView"

    const-string v2, "onVideoAdContinuePlay"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    if-eqz v1, :cond_13

    .line 337
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;->onVideoAdContinuePlay()V

    .line 339
    :cond_13
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->o:Z

    .line 340
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a:I

    .line 341
    return-void
.end method

.method public d()V
    .registers 3

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->e:Z

    .line 361
    const-string v0, "NativeExpressVideoView"

    const-string v1, "onVideoComplete"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    if-eqz v0, :cond_13

    .line 363
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;->onVideoAdComplete()V

    .line 365
    :cond_13
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a:I

    .line 366
    return-void
.end method

.method public d(I)V
    .registers 7

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeVideoState,stateType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeExpressVideoView"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    if-nez v0, :cond_22

    .line 227
    const-string p1, "onChangeVideoState,ExpressVideoView is null !!!!!!!!!!!!"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void

    .line 230
    :cond_22
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_4a

    goto :goto_48

    .line 244
    :pswitch_2a
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->a(JZZ)Z

    .line 245
    goto :goto_48

    .line 241
    :pswitch_2e
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->m()V

    .line 242
    goto :goto_48

    .line 236
    :pswitch_36
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setVideoPlayStatus(I)V

    .line 237
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setCanInterruptVideoPlay(Z)V

    .line 238
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->performClick()Z

    .line 239
    goto :goto_48

    .line 232
    :pswitch_44
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->a(JZZ)Z

    .line 233
    nop

    .line 249
    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_44
        :pswitch_36
        :pswitch_36
        :pswitch_2e
        :pswitch_2a
    .end packed-switch
.end method

.method public d_()V
    .registers 3

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->e:Z

    .line 314
    const-string v0, "NativeExpressVideoView"

    const-string v1, "onVideoAdStartPlay"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    if-eqz v0, :cond_13

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;->onVideoAdStartPlay()V

    .line 318
    :cond_13
    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a:I

    .line 319
    return-void
.end method

.method protected e()V
    .registers 4

    .line 47
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->n:Landroid/widget/FrameLayout;

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->l:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->d:I

    .line 49
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a(I)V

    .line 50
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->n()V

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->n:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a()V

    .line 53
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->getWebView()Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setBackgroundColor(I)V

    .line 54
    return-void
.end method

.method public e_()V
    .registers 3

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->e:Z

    .line 324
    const-string v0, "NativeExpressVideoView"

    const-string v1, "onVideoAdPaused"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    if-eqz v0, :cond_13

    .line 326
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;->onVideoAdPaused()V

    .line 328
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->o:Z

    .line 329
    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->a:I

    .line 330
    return-void
.end method

.method public f()V
    .registers 3

    .line 370
    const-string v0, "NativeExpressVideoView"

    const-string v1, "onVideoLoad"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    if-eqz v0, :cond_10

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->m:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;->onVideoLoad()V

    .line 374
    :cond_10
    return-void
.end method

.method public f(Z)V
    .registers 4

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMuteVideo,mute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeExpressVideoView"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->c(Z)V

    .line 215
    :cond_2b
    return-void
.end method

.method public getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->w:Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    return-object v0
.end method

.method public setCanInterruptVideoPlay(Z)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->v:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;

    if-eqz v0, :cond_7

    .line 131
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ExpressVideoView;->setCanInterruptVideoPlay(Z)V

    .line 133
    :cond_7
    return-void
.end method
