.class public final Lcom/anythink/myoffer/ui/a;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/ui/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Lcom/anythink/myoffer/ui/a$a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/ui/a$a;)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p3, p0, Lcom/anythink/myoffer/ui/a;->i:Lcom/anythink/myoffer/ui/a$a;

    .line 1043
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1044
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_bottom_banner"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1043
    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    .line 1046
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_view_id"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/a;->setId(I)V

    .line 1048
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_iv_banner_icon"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->b:Landroid/widget/ImageView;

    .line 1049
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_tv_banner_title"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->d:Landroid/widget/TextView;

    .line 1050
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_tv_banner_desc"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->e:Landroid/widget/TextView;

    .line 1051
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_btn_banner_cta"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->f:Landroid/widget/Button;

    .line 1052
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_iv_logo"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->c:Landroid/widget/ImageView;

    .line 1060
    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 1061
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 1062
    iget-object v1, p0, Lcom/anythink/myoffer/ui/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1063
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1064
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1065
    invoke-static {v0, v2, v1}, Lcom/anythink/myoffer/a/a/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->g:Landroid/graphics/Bitmap;

    .line 1066
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/a;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1069
    :cond_c2
    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 1070
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e3

    .line 1071
    iget-object v1, p0, Lcom/anythink/myoffer/ui/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1072
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1073
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1074
    invoke-static {v0, v2, v1}, Lcom/anythink/myoffer/a/a/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->h:Landroid/graphics/Bitmap;

    .line 1075
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1078
    :cond_e3
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->f:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->f:Landroid/widget/Button;

    new-instance v1, Lcom/anythink/myoffer/ui/a$1;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/a$1;-><init>(Lcom/anythink/myoffer/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    new-instance v1, Lcom/anythink/myoffer/ui/a$2;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/a$2;-><init>(Lcom/anythink/myoffer/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2084
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 2086
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2087
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2088
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2089
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2090
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2091
    invoke-virtual {p1, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/ui/a;)Lcom/anythink/myoffer/ui/a$a;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->i:Lcom/anythink/myoffer/ui/a$a;

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_bottom_banner"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    .line 46
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_view_id"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/a;->setId(I)V

    .line 48
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_iv_banner_icon"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->b:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_tv_banner_title"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->d:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_tv_banner_desc"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->e:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_btn_banner_cta"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->f:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_iv_logo"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->c:Landroid/widget/ImageView;

    .line 53
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 6

    .prologue
    .line 84
    const/4 v0, 0x1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 86
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 89
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 90
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 91
    invoke-virtual {p1, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method private a(Lcom/anythink/myoffer/c/a;)V
    .registers 5

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 62
    iget-object v1, p0, Lcom/anythink/myoffer/ui/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 63
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    invoke-static {v0, v2, v1}, Lcom/anythink/myoffer/a/a/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->g:Landroid/graphics/Bitmap;

    .line 66
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/a;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    :cond_21
    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 71
    iget-object v1, p0, Lcom/anythink/myoffer/ui/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 72
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    invoke-static {v0, v2, v1}, Lcom/anythink/myoffer/a/a/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/a;->h:Landroid/graphics/Bitmap;

    .line 75
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    :cond_42
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->f:Landroid/widget/Button;

    new-instance v1, Lcom/anythink/myoffer/ui/a$1;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/a$1;-><init>(Lcom/anythink/myoffer/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->a:Landroid/view/View;

    new-instance v1, Lcom/anythink/myoffer/ui/a$2;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/a$2;-><init>(Lcom/anythink/myoffer/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 116
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 117
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    :cond_c
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 120
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    :cond_15
    return-void
.end method
