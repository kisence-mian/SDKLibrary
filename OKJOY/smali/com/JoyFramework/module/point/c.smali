.class public Lcom/JoyFramework/module/point/c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private A:Landroid/view/View;

.field private B:I

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/TextView;

.field private E:Z

.field private F:Z

.field private G:I

.field private H:Z

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:I

.field private Q:I

.field private R:I

.field private S:F

.field private T:I

.field private U:I

.field final a:Landroid/os/Handler;

.field private b:Z

.field private final c:I

.field private final d:I

.field private e:Landroid/view/WindowManager$LayoutParams;

.field private f:Landroid/view/WindowManager;

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/FrameLayout;

.field private j:Z

.field private k:Z

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Lcom/JoyFramework/wight/h;

.field private s:Lcom/JoyFramework/wight/h;

.field private t:Z

.field private u:Landroid/animation/AnimatorSet;

.field private v:Landroid/animation/ObjectAnimator;

.field private w:Landroid/animation/ObjectAnimator;

.field private x:F

.field private y:Z

.field private z:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v1, p0, Lcom/JoyFramework/module/point/c;->b:Z

    .line 44
    const/16 v0, 0x64

    iput v0, p0, Lcom/JoyFramework/module/point/c;->c:I

    .line 45
    const/16 v0, 0x65

    iput v0, p0, Lcom/JoyFramework/module/point/c;->d:I

    .line 61
    iput-boolean v2, p0, Lcom/JoyFramework/module/point/c;->q:Z

    .line 72
    new-instance v0, Lcom/JoyFramework/module/point/d;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/point/d;-><init>(Lcom/JoyFramework/module/point/c;)V

    iput-object v0, p0, Lcom/JoyFramework/module/point/c;->a:Landroid/os/Handler;

    .line 148
    iput-boolean v1, p0, Lcom/JoyFramework/module/point/c;->y:Z

    .line 351
    iput-boolean v1, p0, Lcom/JoyFramework/module/point/c;->E:Z

    .line 426
    iput-boolean v1, p0, Lcom/JoyFramework/module/point/c;->F:Z

    .line 427
    const/16 v0, 0xc8

    iput v0, p0, Lcom/JoyFramework/module/point/c;->G:I

    .line 502
    iput-boolean v1, p0, Lcom/JoyFramework/module/point/c;->H:Z

    .line 506
    iput v1, p0, Lcom/JoyFramework/module/point/c;->I:I

    .line 508
    iput v1, p0, Lcom/JoyFramework/module/point/c;->J:I

    .line 510
    iput v1, p0, Lcom/JoyFramework/module/point/c;->K:I

    .line 512
    iput v1, p0, Lcom/JoyFramework/module/point/c;->L:I

    .line 514
    iput-boolean v1, p0, Lcom/JoyFramework/module/point/c;->M:Z

    .line 560
    iput-boolean v1, p0, Lcom/JoyFramework/module/point/c;->N:Z

    .line 566
    iput-boolean v2, p0, Lcom/JoyFramework/module/point/c;->O:Z

    .line 627
    iput v3, p0, Lcom/JoyFramework/module/point/c;->P:I

    .line 628
    const/4 v0, 0x4

    iput v0, p0, Lcom/JoyFramework/module/point/c;->Q:I

    .line 629
    const/16 v0, 0x8

    iput v0, p0, Lcom/JoyFramework/module/point/c;->R:I

    .line 630
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/JoyFramework/module/point/c;->S:F

    .line 727
    const/16 v0, 0x14

    iput v0, p0, Lcom/JoyFramework/module/point/c;->T:I

    .line 731
    iput v3, p0, Lcom/JoyFramework/module/point/c;->U:I

    .line 152
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/c;->a(Landroid/content/Context;)V

    .line 153
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->e()V

    .line 154
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/point/c;F)F
    .registers 2

    .prologue
    .line 40
    iput p1, p0, Lcom/JoyFramework/module/point/c;->x:F

    return p1
.end method

.method private a(Landroid/content/Context;F)I
    .registers 5

    .prologue
    .line 346
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 348
    :goto_3
    return v0

    .line 347
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 348
    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_3
.end method

.method static synthetic a(Lcom/JoyFramework/module/point/c;I)I
    .registers 2

    .prologue
    .line 40
    iput p1, p0, Lcom/JoyFramework/module/point/c;->P:I

    return p1
.end method

.method static synthetic a(Lcom/JoyFramework/module/point/c;Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/module/point/c;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/JoyFramework/module/point/c;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/JoyFramework/module/point/c;->u:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic a(Lcom/JoyFramework/module/point/c;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/JoyFramework/module/point/c;->v:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private a(FF)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 523
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/module/point/c;->J:I

    .line 524
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/module/point/c;->I:I

    .line 525
    iget v0, p0, Lcom/JoyFramework/module/point/c;->I:I

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/JoyFramework/module/point/c;->J:I

    if-nez v0, :cond_25

    .line 527
    :cond_1a
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const/high16 v1, 0x425c0000    # 55.0f

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/module/point/c;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/module/point/c;->K:I

    .line 557
    :cond_24
    :goto_24
    return-void

    .line 532
    :cond_25
    iget v0, p0, Lcom/JoyFramework/module/point/c;->n:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/JoyFramework/module/point/c;->I:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 534
    iget v1, p0, Lcom/JoyFramework/module/point/c;->n:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/JoyFramework/module/point/c;->I:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 537
    iget v2, p0, Lcom/JoyFramework/module/point/c;->K:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Lcom/JoyFramework/module/point/c;->L:I

    .line 540
    iget v2, p0, Lcom/JoyFramework/module/point/c;->B:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_82

    iget v2, p0, Lcom/JoyFramework/module/point/c;->L:I

    if-lt v2, v0, :cond_82

    int-to-float v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_82

    .line 541
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->H:Z

    if-nez v0, :cond_24

    .line 542
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->C:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const-string v2, "joy_hide_float_selected"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 543
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->D:Landroid/widget/TextView;

    const-string v1, "\u91ca\u653e\u9690\u85cf\u6d6e\u70b9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const-string v3, "joygame_hide_float_color"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 545
    iput-boolean v5, p0, Lcom/JoyFramework/module/point/c;->H:Z

    .line 546
    iput-boolean v5, p0, Lcom/JoyFramework/module/point/c;->M:Z

    goto :goto_24

    .line 549
    :cond_82
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->H:Z

    if-eqz v0, :cond_24

    .line 550
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->C:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const-string v2, "joy_hide_float_normal"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 551
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->D:Landroid/widget/TextView;

    const-string v1, "\u62d6\u52a8\u5230\u6b64\u9690\u85cf\u6d6e\u70b9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const-string v3, "joygame_light_black"

    invoke-static {v2, v3}, Lcom/JoyFramework/d/as;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 553
    iput-boolean v4, p0, Lcom/JoyFramework/module/point/c;->H:Z

    .line 554
    iput-boolean v4, p0, Lcom/JoyFramework/module/point/c;->M:Z

    goto/16 :goto_24
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, -0x2

    .line 201
    iput-object p1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    .line 202
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    .line 210
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 213
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/JoyFramework/module/point/c;->n:I

    .line 214
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/JoyFramework/module/point/c;->o:I

    .line 215
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    .line 223
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 226
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 228
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 230
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 232
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/module/point/c;->o:I

    .line 235
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 236
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/JoyFramework/module/point/c;->o:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 239
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 240
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 241
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/c;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/point/c;->addView(Landroid/view/View;)V

    .line 243
    :try_start_6a
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_71} :catch_7e

    .line 247
    :goto_71
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->f()V

    .line 248
    iget v0, p0, Lcom/JoyFramework/module/point/c;->S:F

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/module/point/c;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/JoyFramework/module/point/c;->S:F

    .line 249
    return-void

    .line 244
    :catch_7e
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "7.1.1\u7248\u672c\uff0c\u6743\u9650\u4e0d\u8db3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    goto :goto_71
.end method

.method static synthetic a(Lcom/JoyFramework/module/point/c;Lrx/Subscriber;)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/c;->a(Lrx/Subscriber;)V

    return-void
.end method

.method private a(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 688
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->j:Z

    if-eqz v0, :cond_5a

    .line 689
    :goto_5
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/module/point/c;->n:I

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/module/point/c;->S:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_44

    .line 690
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/JoyFramework/module/point/c;->R:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 691
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/JoyFramework/module/point/c;->B:I

    div-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_36

    .line 692
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/JoyFramework/module/point/c;->B:I

    div-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 695
    :cond_36
    :try_start_36
    iget v0, p0, Lcom/JoyFramework/module/point/c;->P:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3c} :catch_a8

    .line 698
    :goto_3c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    .line 702
    :cond_44
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/JoyFramework/module/point/c;->B:I

    div-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_56

    .line 703
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/JoyFramework/module/point/c;->B:I

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 705
    :cond_56
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 725
    :goto_59
    return-void

    .line 707
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lez v0, :cond_90

    .line 708
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/JoyFramework/module/point/c;->R:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 709
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/JoyFramework/module/point/c;->B:I

    div-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_82

    .line 710
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/JoyFramework/module/point/c;->B:I

    div-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 713
    :cond_82
    :try_start_82
    iget v0, p0, Lcom/JoyFramework/module/point/c;->P:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_82 .. :try_end_88} :catch_a6

    .line 716
    :goto_88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_5a

    .line 720
    :cond_90
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/JoyFramework/module/point/c;->B:I

    div-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_a2

    .line 721
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/JoyFramework/module/point/c;->B:I

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 723
    :cond_a2
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_59

    .line 714
    :catch_a6
    move-exception v0

    goto :goto_88

    .line 696
    :catch_a8
    move-exception v0

    goto :goto_3c
.end method

.method private a(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 932
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 933
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 934
    if-eqz p1, :cond_17

    const/4 v1, 0x5

    :goto_f
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 935
    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    return-void

    .line 934
    :cond_17
    const/4 v1, 0x3

    goto :goto_f
.end method

.method static synthetic a(Lcom/JoyFramework/module/point/c;)Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/JoyFramework/module/point/c;Z)Z
    .registers 2

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/JoyFramework/module/point/c;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/JoyFramework/module/point/c;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/JoyFramework/module/point/c;->w:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private b(Landroid/content/Context;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 309
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 311
    const-string v1, "joy_float_view"

    invoke-static {p1, v1}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 313
    const-string v0, "l_fl_view"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/JoyFramework/module/point/c;->i:Landroid/widget/FrameLayout;

    .line 315
    const-string v0, "l_float_view_icon_imageView"

    invoke-static {p1, v0}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/JoyFramework/module/point/c;->h:Landroid/widget/ImageView;

    .line 318
    new-instance v0, Lcom/JoyFramework/wight/h;

    iget-object v2, p0, Lcom/JoyFramework/module/point/c;->h:Landroid/widget/ImageView;

    invoke-direct {v0, p1, v2}, Lcom/JoyFramework/wight/h;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/JoyFramework/module/point/c;->s:Lcom/JoyFramework/wight/h;

    .line 319
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->s:Lcom/JoyFramework/wight/h;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/JoyFramework/wight/h;->setBadgePosition(I)V

    .line 320
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->s:Lcom/JoyFramework/wight/h;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v0, v2}, Lcom/JoyFramework/wight/h;->setTextSize(F)V

    .line 322
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->s:Lcom/JoyFramework/wight/h;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/h;->b()V

    .line 324
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->j:Z

    invoke-direct {p0, v0}, Lcom/JoyFramework/module/point/c;->a(Z)V

    .line 325
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 329
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 327
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 331
    return-object v1
.end method

.method static synthetic b(Lcom/JoyFramework/module/point/c;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/JoyFramework/module/point/c;Lrx/Subscriber;)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/c;->b(Lrx/Subscriber;)V

    return-void
.end method

.method private b(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 770
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->j:Z

    if-eqz v0, :cond_34

    .line 774
    :goto_5
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/module/point/c;->n:I

    iget v2, p0, Lcom/JoyFramework/module/point/c;->T:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/module/point/c;->S:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_30

    .line 775
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/JoyFramework/module/point/c;->U:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 777
    :try_start_22
    iget v0, p0, Lcom/JoyFramework/module/point/c;->Q:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_28} :catch_5b

    .line 780
    :goto_28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    .line 782
    :cond_30
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 795
    :goto_33
    return-void

    .line 785
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/JoyFramework/module/point/c;->T:I

    if-ge v0, v1, :cond_55

    .line 786
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/JoyFramework/module/point/c;->U:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 788
    :try_start_47
    iget v0, p0, Lcom/JoyFramework/module/point/c;->Q:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4d} :catch_59

    .line 791
    :goto_4d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_34

    .line 793
    :cond_55
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_33

    .line 789
    :catch_59
    move-exception v0

    goto :goto_4d

    .line 778
    :catch_5b
    move-exception v0

    goto :goto_28
.end method

.method static synthetic b(Lcom/JoyFramework/module/point/c;Z)Z
    .registers 2

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/JoyFramework/module/point/c;->y:Z

    return p1
.end method

.method static synthetic c(Lcom/JoyFramework/module/point/c;Lrx/Subscriber;)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/point/c;->c(Lrx/Subscriber;)V

    return-void
.end method

.method private c(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 832
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->j:Z

    if-eqz v0, :cond_34

    .line 836
    :goto_5
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/module/point/c;->n:I

    iget v2, p0, Lcom/JoyFramework/module/point/c;->T:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/module/point/c;->S:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    .line 837
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/JoyFramework/module/point/c;->U:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 839
    :try_start_22
    iget v0, p0, Lcom/JoyFramework/module/point/c;->Q:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_28} :catch_5b

    .line 842
    :goto_28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    .line 844
    :cond_30
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 857
    :goto_33
    return-void

    .line 847
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/JoyFramework/module/point/c;->T:I

    if-le v0, v1, :cond_55

    .line 848
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/JoyFramework/module/point/c;->U:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 850
    :try_start_47
    iget v0, p0, Lcom/JoyFramework/module/point/c;->Q:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4d} :catch_59

    .line 853
    :goto_4d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_34

    .line 855
    :cond_55
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_33

    .line 851
    :catch_59
    move-exception v0

    goto :goto_4d

    .line 840
    :catch_5b
    move-exception v0

    goto :goto_28
.end method

.method static synthetic c(Lcom/JoyFramework/module/point/c;)Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/JoyFramework/module/point/c;Z)Z
    .registers 2

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/JoyFramework/module/point/c;->q:Z

    return p1
.end method

.method static synthetic d(Lcom/JoyFramework/module/point/c;)F
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/JoyFramework/module/point/c;->x:F

    return v0
.end method

.method static synthetic e(Lcom/JoyFramework/module/point/c;)F
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/JoyFramework/module/point/c;->S:F

    return v0
.end method

.method private e()V
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/module/point/c;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/module/point/c;->B:I

    .line 168
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/point/c;->z:Landroid/view/WindowManager$LayoutParams;

    .line 169
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->z:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/JoyFramework/module/point/c;->B:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 171
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->z:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/JoyFramework/module/point/c;->n:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 172
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->z:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 183
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 185
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->z:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 187
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->z:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 190
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->z:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 193
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->A:Landroid/view/View;

    if-nez v0, :cond_7a

    .line 194
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const-string v2, "joy_hide_float_layout"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/point/c;->A:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->A:Landroid/view/View;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const-string v2, "l_hide_float_img"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/JoyFramework/module/point/c;->C:Landroid/widget/ImageView;

    .line 196
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->A:Landroid/view/View;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const-string v2, "l_hide_float_text"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/module/point/c;->D:Landroid/widget/TextView;

    .line 198
    :cond_7a
    return-void
.end method

.method static synthetic f(Lcom/JoyFramework/module/point/c;)Landroid/animation/ObjectAnimator;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->v:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private f()V
    .registers 5

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->g()V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/module/point/c;->k:Z

    .line 257
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->a:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 258
    return-void
.end method

.method static synthetic g(Lcom/JoyFramework/module/point/c;)Landroid/animation/ObjectAnimator;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->w:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/module/point/c;->k:Z

    .line 265
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method static synthetic h(Lcom/JoyFramework/module/point/c;)Landroid/animation/AnimatorSet;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->u:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private h()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 336
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const-class v2, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    const-string v1, "showingType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 341
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 342
    return-void
.end method

.method static synthetic i(Lcom/JoyFramework/module/point/c;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->i:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private i()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 433
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->F:Z

    if-nez v0, :cond_69

    .line 434
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->g()V

    .line 435
    iput-boolean v7, p0, Lcom/JoyFramework/module/point/c;->F:Z

    .line 437
    const-string v0, "scaleX"

    new-array v1, v6, [F

    fill-array-data v1, :array_6a

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 438
    const-string v1, "scaleY"

    new-array v2, v6, [F

    fill-array-data v2, :array_72

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 439
    const-string v2, "rotation"

    new-array v3, v6, [F

    fill-array-data v3, :array_7a

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 440
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 441
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v7

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 442
    iget v0, p0, Lcom/JoyFramework/module/point/c;->G:I

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 443
    new-instance v0, Lcom/JoyFramework/module/point/i;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/point/i;-><init>(Lcom/JoyFramework/module/point/c;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 452
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 453
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/point/h;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/point/h;-><init>(Lcom/JoyFramework/module/point/c;)V

    .line 454
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 471
    :cond_69
    return-void

    .line 437
    :array_6a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 438
    :array_72
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 439
    :array_7a
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method static synthetic j(Lcom/JoyFramework/module/point/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    return-object v0
.end method

.method private j()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 477
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->F:Z

    if-eqz v0, :cond_62

    .line 478
    iput-boolean v6, p0, Lcom/JoyFramework/module/point/c;->F:Z

    .line 480
    invoke-virtual {p0}, Lcom/JoyFramework/module/point/c;->c()V

    .line 481
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const-string v2, "joy_float_img"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    invoke-virtual {p0, v6}, Lcom/JoyFramework/module/point/c;->setVisibility(I)V

    .line 485
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->f()V

    .line 486
    const-string v0, "scaleX"

    new-array v1, v5, [F

    fill-array-data v1, :array_64

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 487
    const-string v1, "scaleY"

    new-array v2, v5, [F

    fill-array-data v2, :array_6c

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 488
    const-string v2, "rotation"

    new-array v3, v5, [F

    fill-array-data v3, :array_74

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 489
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 490
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 491
    iget v0, p0, Lcom/JoyFramework/module/point/c;->G:I

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 492
    new-instance v0, Lcom/JoyFramework/module/point/j;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/point/j;-><init>(Lcom/JoyFramework/module/point/c;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 498
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 500
    :cond_62
    return-void

    .line 486
    nop

    :array_64
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 487
    :array_6c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 488
    :array_74
    .array-data 4
        0x43b40000    # 360.0f
        0x0
    .end array-data
.end method

.method static synthetic k(Lcom/JoyFramework/module/point/c;)Lcom/JoyFramework/wight/h;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->s:Lcom/JoyFramework/wight/h;

    return-object v0
.end method

.method private k()V
    .registers 4

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->N:Z

    if-nez v0, :cond_14

    .line 573
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->O:Z

    if-eqz v0, :cond_14

    .line 574
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->A:Landroid/view/View;

    iget-object v2, p0, Lcom/JoyFramework/module/point/c;->z:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/module/point/c;->N:Z

    .line 578
    :cond_14
    return-void
.end method

.method static synthetic l(Lcom/JoyFramework/module/point/c;)I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/JoyFramework/module/point/c;->G:I

    return v0
.end method

.method private l()V
    .registers 3

    .prologue
    .line 647
    new-instance v0, Lcom/JoyFramework/module/point/m;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/point/m;-><init>(Lcom/JoyFramework/module/point/c;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 653
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 654
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/point/l;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/point/l;-><init>(Lcom/JoyFramework/module/point/c;)V

    .line 655
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 680
    return-void
.end method

.method static synthetic m(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private m()V
    .registers 3

    .prologue
    .line 737
    new-instance v0, Lcom/JoyFramework/module/point/o;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/point/o;-><init>(Lcom/JoyFramework/module/point/c;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 743
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 744
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/point/n;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/point/n;-><init>(Lcom/JoyFramework/module/point/c;)V

    .line 745
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 762
    return-void
.end method

.method static synthetic n(Lcom/JoyFramework/module/point/c;)I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/JoyFramework/module/point/c;->B:I

    return v0
.end method

.method private n()V
    .registers 3

    .prologue
    .line 798
    new-instance v0, Lcom/JoyFramework/module/point/g;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/point/g;-><init>(Lcom/JoyFramework/module/point/c;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 804
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 805
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/point/f;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/point/f;-><init>(Lcom/JoyFramework/module/point/c;)V

    .line 806
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 829
    return-void
.end method

.method static synthetic o(Lcom/JoyFramework/module/point/c;)Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    return-object v0
.end method

.method private o()V
    .registers 2

    .prologue
    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 864
    :goto_5
    return-void

    .line 862
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static synthetic p(Lcom/JoyFramework/module/point/c;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->j()V

    return-void
.end method

.method static synthetic q(Lcom/JoyFramework/module/point/c;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->i()V

    return-void
.end method

.method static synthetic r(Lcom/JoyFramework/module/point/c;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->m()V

    return-void
.end method

.method static synthetic s(Lcom/JoyFramework/module/point/c;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->n()V

    return-void
.end method

.method static synthetic t(Lcom/JoyFramework/module/point/c;)I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/JoyFramework/module/point/c;->n:I

    return v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 870
    invoke-virtual {p0}, Lcom/JoyFramework/module/point/c;->c()V

    .line 871
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 872
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->i()V

    .line 875
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->N:Z

    if-eqz v0, :cond_27

    .line 876
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->A:Landroid/view/View;

    if-eqz v0, :cond_27

    .line 877
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->A:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 878
    iput-boolean v2, p0, Lcom/JoyFramework/module/point/c;->N:Z

    .line 879
    iput-boolean v2, p0, Lcom/JoyFramework/module/point/c;->O:Z

    .line 882
    :cond_27
    return-void
.end method

.method public a(II)V
    .registers 5

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->M:Z

    if-eqz v0, :cond_25

    .line 586
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->g()V

    .line 587
    invoke-static {}, Lcom/JoyFramework/d/e;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 588
    invoke-static {}, Lcom/JoyFramework/d/e;->d()V

    .line 591
    :cond_10
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->i()V

    .line 593
    const/16 v0, 0x8

    iput v0, p0, Lcom/JoyFramework/module/point/c;->P:I

    .line 594
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    new-instance v1, Lcom/JoyFramework/module/point/k;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/point/k;-><init>(Lcom/JoyFramework/module/point/c;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/d/e;->a(Landroid/content/Context;Lcom/JoyFramework/d/e$a;)V

    .line 619
    :cond_25
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->N:Z

    if-eqz v0, :cond_37

    .line 620
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->O:Z

    if-eqz v0, :cond_37

    .line 621
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->A:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/module/point/c;->N:Z

    .line 625
    :cond_37
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 889
    sget-boolean v0, Lcom/JoyFramework/a/a;->F:Z

    if-nez v0, :cond_5

    .line 905
    :cond_4
    :goto_4
    return-void

    .line 890
    :cond_5
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->F:Z

    if-eqz v0, :cond_4

    .line 891
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->j()V

    .line 892
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->q:Z

    if-eqz v0, :cond_30

    .line 893
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const-string v2, "joy_float_img"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 895
    invoke-virtual {p0}, Lcom/JoyFramework/module/point/c;->c()V

    .line 896
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 897
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/module/point/c;->q:Z

    .line 901
    :cond_30
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->s:Lcom/JoyFramework/wight/h;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/h;->b()V

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/module/point/c;->O:Z

    goto :goto_4
.end method

.method public c()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x42480000    # 50.0f

    .line 912
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 913
    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcom/JoyFramework/module/point/c;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 914
    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcom/JoyFramework/module/point/c;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 915
    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const-string v2, "joy_float_img"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 919
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 920
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 921
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 922
    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/JoyFramework/module/point/c;->a()V

    .line 944
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->o()V

    .line 946
    :try_start_6
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    .line 949
    :goto_c
    return-void

    .line 947
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 272
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 275
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/JoyFramework/module/point/c;->n:I

    .line 276
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/JoyFramework/module/point/c;->o:I

    .line 277
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 278
    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 279
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_5e

    .line 299
    :goto_26
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    return-void

    .line 281
    :pswitch_2e
    iget-boolean v2, p0, Lcom/JoyFramework/module/point/c;->j:Z

    if-eqz v2, :cond_3d

    .line 282
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/JoyFramework/module/point/c;->n:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 283
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_26

    .line 285
    :cond_3d
    iget-object v2, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 286
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_26

    .line 290
    :pswitch_46
    iget-boolean v2, p0, Lcom/JoyFramework/module/point/c;->j:Z

    if-eqz v2, :cond_55

    .line 291
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/JoyFramework/module/point/c;->n:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 292
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_26

    .line 294
    :cond_55
    iget-object v2, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 295
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_26

    .line 279
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_46
        :pswitch_2e
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/high16 v7, 0x40800000    # 4.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 356
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 357
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 359
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_d8

    .line 423
    :cond_15
    :goto_15
    return v5

    .line 361
    :pswitch_16
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->g()V

    .line 362
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/JoyFramework/module/point/c;->l:F

    .line 363
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/JoyFramework/module/point/c;->m:F

    .line 365
    invoke-virtual {p0}, Lcom/JoyFramework/module/point/c;->c()V

    .line 366
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->g:Landroid/content/Context;

    const-string v2, "joy_float_img"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    iput-boolean v5, p0, Lcom/JoyFramework/module/point/c;->p:Z

    .line 369
    iput-boolean v5, p0, Lcom/JoyFramework/module/point/c;->E:Z

    goto :goto_15

    .line 373
    :pswitch_3a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 374
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 376
    iget v4, p0, Lcom/JoyFramework/module/point/c;->l:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_59

    iget v2, p0, Lcom/JoyFramework/module/point/c;->m:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_15

    .line 377
    :cond_59
    iget-boolean v2, p0, Lcom/JoyFramework/module/point/c;->y:Z

    if-eqz v2, :cond_62

    .line 378
    iput-boolean v5, p0, Lcom/JoyFramework/module/point/c;->y:Z

    .line 379
    invoke-virtual {p0}, Lcom/JoyFramework/module/point/c;->c()V

    .line 381
    :cond_62
    iput-boolean v6, p0, Lcom/JoyFramework/module/point/c;->p:Z

    .line 383
    iget-object v2, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    int-to-float v0, v0

    iget v3, p0, Lcom/JoyFramework/module/point/c;->l:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 384
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/module/point/c;->m:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 385
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iput-boolean v6, p0, Lcom/JoyFramework/module/point/c;->E:Z

    .line 387
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->k()V

    .line 388
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/module/point/c;->a(FF)V

    goto :goto_15

    .line 396
    :pswitch_90
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/JoyFramework/module/point/c;->n:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_c4

    .line 397
    iput-boolean v6, p0, Lcom/JoyFramework/module/point/c;->j:Z

    .line 402
    :cond_9c
    :goto_9c
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->f()V

    .line 403
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->E:Z

    if-nez v0, :cond_a9

    .line 404
    invoke-static {}, Lcom/JoyFramework/d/e;->c()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 411
    :cond_a9
    :goto_a9
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/module/point/c;->a(II)V

    .line 412
    iget-boolean v0, p0, Lcom/JoyFramework/module/point/c;->E:Z

    if-eqz v0, :cond_bb

    .line 413
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->l()V

    .line 415
    :cond_bb
    iput-boolean v5, p0, Lcom/JoyFramework/module/point/c;->E:Z

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Lcom/JoyFramework/module/point/c;->m:F

    iput v0, p0, Lcom/JoyFramework/module/point/c;->l:F

    goto/16 :goto_15

    .line 398
    :cond_c4
    iget-object v0, p0, Lcom/JoyFramework/module/point/c;->e:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/JoyFramework/module/point/c;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_9c

    .line 399
    iput-boolean v5, p0, Lcom/JoyFramework/module/point/c;->j:Z

    goto :goto_9c

    .line 407
    :cond_d1
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->h()V

    .line 408
    invoke-direct {p0}, Lcom/JoyFramework/module/point/c;->i()V

    goto :goto_a9

    .line 359
    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_16
        :pswitch_90
        :pswitch_3a
    .end packed-switch
.end method
