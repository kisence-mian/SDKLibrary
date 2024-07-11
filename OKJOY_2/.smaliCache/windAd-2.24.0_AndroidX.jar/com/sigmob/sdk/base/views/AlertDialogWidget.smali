.class public Lcom/sigmob/sdk/base/views/AlertDialogWidget;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/AlertDialogWidget$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:I

.field private k:Landroid/widget/TextView;

.field private l:Lcom/sigmob/sdk/videoAd/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/d;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->l:Lcom/sigmob/sdk/videoAd/d;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->l:Lcom/sigmob/sdk/videoAd/d;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p2, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->b:I

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->f:I

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->d:I

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {v1, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->g:I

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "#50000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setBackgroundColor(I)V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->e(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/widget/TextView;
    .registers 7

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    mul-int/lit8 v1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->l:Lcom/sigmob/sdk/videoAd/d;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/sigmob/sdk/base/views/c;->a:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    int-to-double v1, p1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object v0
.end method

.method private b(Landroid/content/Context;)Landroid/widget/TextView;
    .registers 7

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->k:Landroid/widget/TextView;

    iget p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    mul-int/lit8 v1, p1, 0x3

    const/4 v2, 0x2

    mul-int/2addr p1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->k:Landroid/widget/TextView;

    sget v0, Lcom/sigmob/sdk/base/views/c;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->k:Landroid/widget/TextView;

    iget v0, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    int-to-double v0, v0

    const-wide v3, 0x3fe199999999999aL    # 0.55

    mul-double/2addr v0, v3

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->k:Landroid/widget/TextView;

    return-object p1
.end method

.method private c(Landroid/content/Context;)Landroid/widget/Button;
    .registers 7

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->l:Lcom/sigmob/sdk/videoAd/d;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/sigmob/sdk/base/views/c;->a:I

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    iget p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    int-to-double v1, p1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v1, v3

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->e:I

    iget v3, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->d:I

    iget v4, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    mul-int/lit8 v3, v2, 0x6

    invoke-virtual {v1, v3, p1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private d(Landroid/content/Context;)Landroid/widget/Button;
    .registers 10

    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->l:Lcom/sigmob/sdk/videoAd/d;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->e:I

    iget v1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->d:I

    add-int/2addr v2, v1

    invoke-direct {p1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    invoke-virtual {v7, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p1, 0x0

    invoke-virtual {v7, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    int-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-float p1, v0

    invoke-virtual {v7, p1}, Landroid/widget/Button;->setTextSize(F)V

    sget v1, Lcom/sigmob/sdk/base/views/c;->a:I

    iget v2, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->b:I

    const-string p1, "#66000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/sigmob/sdk/base/views/f;->a(Landroid/view/View;IIIIII)V

    return-object v7
.end method

.method private e(Landroid/content/Context;)V
    .registers 11

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->d:I

    const/4 v4, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->b(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->b:I

    const-string v1, "#66000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Lcom/sigmob/sdk/base/views/f;->a(Landroid/view/View;IIIIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->f:I

    iget v3, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->c:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->c(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->h:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->d(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->i:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->g:I

    invoke-direct {p1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->a:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setDialogListener(Lcom/sigmob/sdk/base/views/AlertDialogWidget$a;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->h:Landroid/widget/Button;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/sigmob/sdk/base/views/AlertDialogWidget$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget$1;-><init>(Lcom/sigmob/sdk/base/views/AlertDialogWidget;Lcom/sigmob/sdk/base/views/AlertDialogWidget$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->i:Landroid/widget/Button;

    if-eqz v0, :cond_18

    new-instance v1, Lcom/sigmob/sdk/base/views/AlertDialogWidget$2;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/base/views/AlertDialogWidget$2;-><init>(Lcom/sigmob/sdk/base/views/AlertDialogWidget;Lcom/sigmob/sdk/base/views/AlertDialogWidget$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setduration(I)V
    .registers 5

    iput p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->j:I

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->l:Lcom/sigmob/sdk/videoAd/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/d;->b()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->j:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_SEC_"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    return-void
.end method
