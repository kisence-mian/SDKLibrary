.class public Lcom/ssjj/fnsdk/core/update/ViewUpdate;
.super Lcom/ssjj/fnsdk/core/update/ViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;
    }
.end annotation


# static fields
.field public static final mode_beforeDownload:I = 0x1

.field public static final mode_downloading:I = 0x0

.field public static final mode_error:I = 0x4

.field public static final mode_finish:I = 0x3

.field public static final mode_pause:I = 0x2


# instance fields
.field private A:Landroid/view/View$OnLongClickListener;

.field private B:I

.field private C:Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

.field private a:Landroid/widget/RelativeLayout;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/ssjj/fnsdk/core/update/ViewTitle;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/ViewBase;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x2af9

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->c:I

    const/16 p1, 0x2afa

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->d:I

    const/16 p1, 0x2afb

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->e:I

    const/16 p1, 0x2afc

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->f:I

    const/16 p1, 0x2b00

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->g:I

    const/16 p1, 0x2b0d

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->h:I

    const/16 p1, 0x2b0e

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->i:I

    const/16 p1, 0x2b01

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->j:I

    const/16 p1, 0x2b04

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->k:I

    const/16 p1, 0x2b05

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->l:I

    const/16 p1, 0x2b06

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->m:I

    new-instance p1, Lcom/ssjj/fnsdk/core/update/z;

    invoke-direct {p1, p0}, Lcom/ssjj/fnsdk/core/update/z;-><init>(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->y:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/ssjj/fnsdk/core/update/aa;

    invoke-direct {p1, p0}, Lcom/ssjj/fnsdk/core/update/aa;-><init>(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->z:Landroid/view/View$OnLongClickListener;

    new-instance p1, Lcom/ssjj/fnsdk/core/update/ab;

    invoke-direct {p1, p0}, Lcom/ssjj/fnsdk/core/update/ab;-><init>(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->A:Landroid/view/View$OnLongClickListener;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->C:Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->w:Landroid/widget/Button;

    return-object p0
.end method

.method private a()V
    .registers 6

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b()V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->c()V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->f()V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->g()V

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->C:Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    return-object p0
.end method

.method private b()V
    .registers 4

    new-instance v0, Lcom/ssjj/fnsdk/core/update/ViewTitle;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewTitle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->n:Lcom/ssjj/fnsdk/core/update/ViewTitle;

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->c:I

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->setId(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->n:Lcom/ssjj/fnsdk/core/update/ViewTitle;

    const-string v1, "\u66f4\u65b0\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->n:Lcom/ssjj/fnsdk/core/update/ViewTitle;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->z:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->setTitleLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->n:Lcom/ssjj/fnsdk/core/update/ViewTitle;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextMain:I

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->setTitleColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->n:Lcom/ssjj/fnsdk/core/update/ViewTitle;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)I
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->B:I

    return p0
.end method

.method private c()V
    .registers 11

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->o:Landroid/widget/TextView;

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->o:Landroid/widget/TextView;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextMain:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->o:Landroid/widget/TextView;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextMain:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->o:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v5, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->c:I

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v9

    invoke-virtual {v0, v7, v9, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->o:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->p:Landroid/widget/TextView;

    iget v7, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->e:I

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->p:Landroid/widget/TextView;

    sget v7, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextMain:I

    int-to-float v7, v7

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->p:Landroid/widget/TextView;

    sget v7, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextMain:I

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->c:I

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xb

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->p:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->A:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->d()V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->e()V

    return-void
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->x:Landroid/widget/Button;

    return-object p0
.end method

.method private d()V
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->q:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->f:I

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v1, 0x3

    iget v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->q:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic e(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()V
    .registers 12

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextMain:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v0, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimary:I

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimaryDark:I

    sget v3, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimaryDark:I

    invoke-static {v0, v1, v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->createColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    const-string v3, "\u67e5\u770b\u66f4\u65b0\u5185\u5bb9"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    new-instance v3, Lcom/ssjj/fnsdk/core/update/ac;

    invoke-direct {v3, p0}, Lcom/ssjj/fnsdk/core/update/ac;-><init>(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->d:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v7

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->t:Landroid/widget/TextView;

    iget v6, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->h:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->t:Landroid/widget/TextView;

    sget v6, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextMain:I

    add-int/lit8 v6, v6, -0x6

    int-to-float v6, v6

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->t:Landroid/widget/TextView;

    sget v6, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextMain:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v7

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v7, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->g:I

    invoke-virtual {v0, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v7

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v9

    invoke-virtual {v0, v7, v9, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->t:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->t:Landroid/widget/TextView;

    invoke-virtual {v7, v10, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->u:Landroid/widget/TextView;

    iget v7, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->i:I

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->u:Landroid/widget/TextView;

    sget v7, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextMain:I

    add-int/lit8 v7, v7, -0x6

    int-to-float v7, v7

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->u:Landroid/widget/TextView;

    sget v7, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextMain:I

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->g:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xb

    const/4 v6, -0x1

    invoke-virtual {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    invoke-virtual {v0, v2, v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->j:I

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->h:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic f(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method private f()V
    .registers 13

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b:Landroid/content/Context;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextBigButton:I

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/ssjj/fnsdk/core/update/ViewBase;->newConfirmButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->w:Landroid/widget/Button;

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->isLandscape()Z

    move-result v3

    const/high16 v4, 0x43280000    # 168.0f

    const/high16 v5, 0x43160000    # 150.0f

    if-eqz v3, :cond_26

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    goto :goto_2a

    :cond_26
    invoke-static {v5}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    :goto_2a
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v7, 0xc

    const/4 v9, -0x1

    invoke-virtual {v0, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v10, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->w:Landroid/widget/Button;

    invoke-virtual {v10, v11, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b:Landroid/content/Context;

    sget v10, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextBigButton:I

    invoke-static {v0, v2, v10}, Lcom/ssjj/fnsdk/core/update/ViewBase;->newConfirmButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->x:Landroid/widget/Button;

    iget v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->l:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    goto :goto_6e

    :cond_6a
    invoke-static {v5}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    :goto_6e
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    invoke-virtual {v0, v8, v8, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->x:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->w:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->x:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private g()V
    .registers 7

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->r:Landroid/widget/TextView;

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->r:Landroid/widget/TextView;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextTitle:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->r:Landroid/widget/TextView;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextOther:I

    sget v4, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextOtherPress:I

    sget v5, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextOtherPress:I

    invoke-static {v1, v4, v5}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->createColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->r:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->r:Landroid/widget/TextView;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->r:Landroid/widget/TextView;

    const-string v1, "\u8bd5\u8bd5\u7528\u6d4f\u89c8\u5668\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->r:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->l:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 2

    iget v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->B:I

    return v0
.end method

.method public getProgress()I
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->getProgress()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public setDescNormalTitle()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->q:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    const-string v1, "\u66f4\u65b0\u5185\u5bb9\uff1a"

    sget v2, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextMain:I

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setDescTitle(Ljava/lang/String;I)V

    return-void
.end method

.method public setDescRemindTitle()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->q:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    const-string v1, "\u66f4\u65b0\u5931\u8d25\uff1a"

    sget v2, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimary:I

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setDescTitle(Ljava/lang/String;I)V

    return-void
.end method

.method public setHtmlDesc(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->q:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setHtmlDesc(Ljava/lang/String;)V

    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->w:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftTimeText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMode(I)V
    .registers 6

    iget v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->B:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, v0, :cond_41

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->B:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    invoke-virtual {p1, v3}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->setProgress(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    const-string v0, "\u7b49\u5f85\u4e0b\u8f7d..."

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->setProgressText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->q:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    invoke-virtual {p1, v3}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->x:Landroid/widget/Button;

    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    :goto_37
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d9

    :cond_41
    if-nez p1, :cond_63

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->B:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    invoke-virtual {p1, v3}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->q:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->x:Landroid/widget/Button;

    const-string v0, "\u6682\u505c"

    goto :goto_37

    :cond_63
    const/4 v0, 0x2

    if-ne p1, v0, :cond_86

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->B:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    invoke-virtual {p1, v3}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->q:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->x:Landroid/widget/Button;

    const-string v0, "\u7ee7\u7eed\u4e0b\u8f7d"

    goto :goto_37

    :cond_86
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b0

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->B:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    invoke-virtual {p1, v3}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->q:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->w:Landroid/widget/Button;

    const-string v0, "\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->x:Landroid/widget/Button;

    const-string v0, "\u7acb\u5373\u5b89\u88c5"

    goto :goto_37

    :cond_b0
    if-ne p1, v1, :cond_d9

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->B:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->q:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    invoke-virtual {p1, v3}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->x:Landroid/widget/Button;

    const-string v0, "\u91cd\u8bd5\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d9
    :goto_d9
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    if-ltz p1, :cond_b

    const/16 v0, 0x64

    if-gt p1, v0, :cond_b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->setProgress(I)V

    :cond_b
    return-void
.end method

.method public setProgressClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setProgressText(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->v:Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdateProgress;->setProgressText(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->p:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->p:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5927\u5c0f\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSpeedText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextDesc(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->q:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setTextDesc(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->o:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65b0\u7248\u672c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
