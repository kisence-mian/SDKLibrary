.class public Lcom/ssjj/fnsdk/core/share/page/SharePageView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;
    }
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;

.field private c:Lcom/ssjj/fnsdk/core/share/page/DragView;

.field private d:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

.field private e:Lcom/ssjj/fnsdk/core/share/page/PopView;

.field private f:Landroid/graphics/Bitmap;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Landroid/view/View$OnClickListener;

.field private m:Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;

.field private n:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

.field private o:F

.field private p:F

.field private q:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

.field private r:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->h:Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->j:I

    iput v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->k:I

    new-instance v1, Lcom/ssjj/fnsdk/core/share/page/l;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/share/page/l;-><init>(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->l:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->m:Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;

    new-instance v0, Lcom/ssjj/fnsdk/core/share/page/m;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/share/page/m;-><init>(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->n:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    new-instance v0, Lcom/ssjj/fnsdk/core/share/page/n;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/share/page/n;-><init>(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->b:Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;

    new-instance v0, Lcom/ssjj/fnsdk/core/share/page/o;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/share/page/o;-><init>(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->q:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method private a()Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;
    .registers 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    new-instance v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;-><init>()V

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    iput-object v2, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    iget v2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->size:I

    iput v2, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->size:I

    iget v2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->color:I

    iput v2, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->color:I

    iget-object v2, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    iput-object v2, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->style:Ljava/lang/String;

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->style:Ljava/lang/String;

    return-object v1
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->m:Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;",
            ">;I)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_119

    sget-object v0, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->backBm:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->f:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-direct {v1, p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->d:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->n:Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->setSelectTextListener(Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->d:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->i:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->addTests(Ljava/util/List;)V

    new-instance v1, Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-direct {v1, p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->e:Lcom/ssjj/fnsdk/core/share/page/PopView;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->d:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/share/page/PopView;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->e:Lcom/ssjj/fnsdk/core/share/page/PopView;

    const/16 v3, 0x2af9

    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/share/page/PopView;->setId(I)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->e:Lcom/ssjj/fnsdk/core/share/page/PopView;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->q:Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;

    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/share/page/PopView;->setPopListener(Lcom/ssjj/fnsdk/core/share/page/PopView$PopListener;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->e:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-virtual {v1, p3}, Lcom/ssjj/fnsdk/core/share/page/PopView;->setType(I)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->e:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->getTitleHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->p:F

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->e:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-virtual {p0, v1, v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v5

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v8

    iget v9, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->p:F

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v4, 0x0

    if-nez p2, :cond_a0

    new-instance p2, Lcom/ssjj/fnsdk/core/share/page/DragView;

    const-string v5, ""

    invoke-direct {p2, p1, v5}, Lcom/ssjj/fnsdk/core/share/page/DragView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_9d
    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    goto :goto_c1

    :cond_a0
    if-nez p3, :cond_b0

    new-instance p2, Lcom/ssjj/fnsdk/core/share/page/DragView;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    invoke-direct {p2, p1, v5}, Lcom/ssjj/fnsdk/core/share/page/DragView;-><init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V

    goto :goto_9d

    :cond_b0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_c1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a()Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->h:Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    new-instance p2, Lcom/ssjj/fnsdk/core/share/page/DragView;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->h:Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    invoke-direct {p2, p1, v5}, Lcom/ssjj/fnsdk/core/share/page/DragView;-><init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V

    goto :goto_9d

    :cond_c1
    :goto_c1
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-virtual {p2, p3}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setType(I)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    new-instance p3, Lcom/ssjj/fnsdk/core/share/page/p;

    invoke-direct {p3, p0}, Lcom/ssjj/fnsdk/core/share/page/p;-><init>(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)V

    const-wide/16 v5, 0xa

    invoke-virtual {p2, p3, v5, v6}, Lcom/ssjj/fnsdk/core/share/page/DragView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->b:Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;

    invoke-virtual {p2, p3}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setDragViewListener(Lcom/ssjj/fnsdk/core/share/page/DragView$DragViewListener;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-virtual {p0, p2, v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result p3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v0

    invoke-direct {p2, p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p3, 0x9

    invoke-virtual {p2, p3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a:Landroid/widget/ImageView;

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result p3

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v0

    invoke-virtual {p1, p3, v0, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->i:Ljava/util/List;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;F)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->o:F

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;I)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->k:I

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/page/SharePageView;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->r:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->r:Landroid/widget/Toast;

    goto :goto_18

    :cond_10
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->r:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    :goto_18
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->r:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)I
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->k:I

    return p0
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)I
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->j:I

    return p0
.end method

.method static synthetic e(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->d:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    return-object p0
.end method

.method static synthetic f(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/DragView;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    return-object p0
.end method

.method static synthetic h(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->a()Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->h:Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    return-object p0
.end method

.method static synthetic j(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)F
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->p:F

    return p0
.end method

.method static synthetic k(Lcom/ssjj/fnsdk/core/share/page/SharePageView;)F
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->o:F

    return p0
.end method


# virtual methods
.method public addText(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->addText(Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;)V

    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->addText(Ljava/lang/String;)V

    return-void
.end method

.method public genShareImage()Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->clearSelect()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->getScreenHeight()I

    move-result v3

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/page/DragView;->release()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->d:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->release()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->e:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/page/PopView;->release()V

    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .registers 3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomTextCount(I)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->j:I

    return-void
.end method

.method public setShareImage(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setSharePageListener(Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->m:Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;

    return-void
.end method

.method public setType(I)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->c:Lcom/ssjj/fnsdk/core/share/page/DragView;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/DragView;->setType(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SharePageView;->e:Lcom/ssjj/fnsdk/core/share/page/PopView;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/PopView;->setType(I)V

    return-void
.end method
