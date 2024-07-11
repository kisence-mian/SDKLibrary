.class public Lcom/anythink/basead/ui/BannerView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/BannerView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Lcom/anythink/basead/ui/BannerView$a;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/anythink/core/common/d/h;ILcom/anythink/basead/ui/BannerView$a;)V
    .registers 10

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p4, p0, Lcom/anythink/basead/ui/BannerView;->g:Lcom/anythink/basead/ui/BannerView$a;

    .line 45
    iput p3, p0, Lcom/anythink/basead/ui/BannerView;->h:I

    .line 47
    nop

    .line 1054
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 1055
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "myoffer_bottom_banner"

    const-string v1, "layout"

    invoke-static {p4, v0, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 1054
    const/4 v0, 0x1

    invoke-virtual {p3, p4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    .line 1057
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "myoffer_banner_view_id"

    const-string v1, "id"

    invoke-static {p3, p4, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/anythink/basead/ui/BannerView;->setId(I)V

    .line 1059
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v2, "myoffer_iv_banner_icon"

    invoke-static {p4, v2, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/anythink/basead/ui/BannerView;->b:Landroid/widget/ImageView;

    .line 1060
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v2, "myoffer_tv_banner_title"

    invoke-static {p4, v2, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/anythink/basead/ui/BannerView;->d:Landroid/widget/TextView;

    .line 1061
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v2, "myoffer_tv_banner_desc"

    invoke-static {p4, v2, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/anythink/basead/ui/BannerView;->e:Landroid/widget/TextView;

    .line 1062
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v2, "myoffer_btn_banner_cta"

    invoke-static {p4, v2, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lcom/anythink/basead/ui/BannerView;->f:Landroid/widget/Button;

    .line 1063
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v2, "myoffer_iv_logo"

    invoke-static {p4, v2, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/anythink/basead/ui/BannerView;->c:Landroid/widget/ImageView;

    .line 48
    nop

    .line 1071
    invoke-virtual {p2}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object p3

    .line 1072
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_c4

    .line 1073
    iget-object p4, p0, Lcom/anythink/basead/ui/BannerView;->b:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    .line 1074
    iget v1, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1075
    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1076
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/core/common/res/e;

    invoke-direct {v3, v0, p3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/anythink/basead/ui/BannerView$1;

    invoke-direct {v4, p0, p3}, Lcom/anythink/basead/ui/BannerView$1;-><init>(Lcom/anythink/basead/ui/BannerView;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1, p4, v4}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 1092
    :cond_c4
    invoke-virtual {p2}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object p3

    .line 1093
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_ed

    .line 1094
    iget-object p4, p0, Lcom/anythink/basead/ui/BannerView;->c:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    .line 1095
    iget v1, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1096
    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1097
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/core/common/res/e;

    invoke-direct {v3, v0, p3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/anythink/basead/ui/BannerView$2;

    invoke-direct {v4, p0, p3}, Lcom/anythink/basead/ui/BannerView$2;-><init>(Lcom/anythink/basead/ui/BannerView;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1, p4, v4}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 1112
    :cond_ed
    invoke-virtual {p2}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/16 p4, 0x8

    if-eqz p3, :cond_fe

    .line 1113
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1116
    :cond_fe
    invoke-virtual {p2}, Lcom/anythink/core/common/d/h;->h()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_11e

    .line 1117
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->d:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {p3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1118
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1119
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->e:Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1122
    :cond_11e
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/anythink/core/common/d/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    invoke-virtual {p2}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_14a

    .line 1126
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->f:Landroid/widget/Button;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1127
    iget-object p3, p0, Lcom/anythink/basead/ui/BannerView;->f:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14f

    .line 1129
    :cond_14a
    iget-object p2, p0, Lcom/anythink/basead/ui/BannerView;->f:Landroid/widget/Button;

    invoke-virtual {p2, p4}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    :goto_14f
    nop

    .line 1158
    iget-object p2, p0, Lcom/anythink/basead/ui/BannerView;->f:Landroid/widget/Button;

    new-instance p3, Lcom/anythink/basead/ui/BannerView$3;

    invoke-direct {p3, p0}, Lcom/anythink/basead/ui/BannerView$3;-><init>(Lcom/anythink/basead/ui/BannerView;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1166
    iget-object p2, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    new-instance p3, Lcom/anythink/basead/ui/BannerView$4;

    invoke-direct {p3, p0}, Lcom/anythink/basead/ui/BannerView$4;-><init>(Lcom/anythink/basead/ui/BannerView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    nop

    .line 2134
    const/high16 p2, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-static {v0, p2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 2137
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 p4, 0x42920000    # 73.0f

    invoke-static {p3, p4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result p3

    .line 2138
    iget-object p4, p0, Lcom/anythink/basead/ui/BannerView;->b:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getVisibility()I

    move-result p4

    if-eqz p4, :cond_194

    .line 2139
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 p4, 0x42700000    # 60.0f

    invoke-static {p3, p4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result p3

    .line 2148
    :cond_194
    new-instance p4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p4, v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2149
    const/16 p3, 0xc

    invoke-virtual {p4, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2150
    const/16 p3, 0xb

    invoke-virtual {p4, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2151
    iput p2, p4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2152
    iput p2, p4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2153
    iput p2, p4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2154
    invoke-virtual {p1, p0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/BannerView;)Landroid/widget/ImageView;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/basead/ui/BannerView;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a()V
    .registers 5

    .line 54
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_bottom_banner"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 54
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_view_id"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BannerView;->setId(I)V

    .line 59
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "myoffer_iv_banner_icon"

    invoke-static {v1, v3, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BannerView;->b:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "myoffer_tv_banner_title"

    invoke-static {v1, v3, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BannerView;->d:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "myoffer_tv_banner_desc"

    invoke-static {v1, v3, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BannerView;->e:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "myoffer_btn_banner_cta"

    invoke-static {v1, v3, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anythink/basead/ui/BannerView;->f:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "myoffer_iv_logo"

    invoke-static {v1, v3, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BannerView;->c:Landroid/widget/ImageView;

    .line 64
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 6

    .line 134
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 137
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42920000    # 73.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/anythink/basead/ui/BannerView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_30

    .line 139
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v1

    .line 148
    :cond_30
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 152
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 153
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 154
    invoke-virtual {p1, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-void
.end method

.method private a(Lcom/anythink/core/common/d/h;)V
    .registers 9

    .line 71
    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    .line 73
    iget-object v1, p0, Lcom/anythink/basead/ui/BannerView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 74
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 75
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v4

    new-instance v5, Lcom/anythink/core/common/res/e;

    invoke-direct {v5, v2, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/anythink/basead/ui/BannerView$1;

    invoke-direct {v6, p0, v0}, Lcom/anythink/basead/ui/BannerView$1;-><init>(Lcom/anythink/basead/ui/BannerView;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v3, v1, v6}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 92
    :cond_2a
    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 94
    iget-object v1, p0, Lcom/anythink/basead/ui/BannerView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 95
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v4

    new-instance v5, Lcom/anythink/core/common/res/e;

    invoke-direct {v5, v2, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/anythink/basead/ui/BannerView$2;

    invoke-direct {v6, p0, v0}, Lcom/anythink/basead/ui/BannerView$2;-><init>(Lcom/anythink/basead/ui/BannerView;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v3, v1, v6}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 112
    :cond_53
    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_64

    .line 113
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    :cond_64
    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 117
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->d:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->d:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :cond_84
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 126
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 129
    :cond_b0
    iget-object p1, p0, Lcom/anythink/basead/ui/BannerView;->f:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/BannerView;)Landroid/widget/ImageView;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/basead/ui/BannerView;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->f:Landroid/widget/Button;

    new-instance v1, Lcom/anythink/basead/ui/BannerView$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BannerView$3;-><init>(Lcom/anythink/basead/ui/BannerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView;->a:Landroid/view/View;

    new-instance v1, Lcom/anythink/basead/ui/BannerView$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BannerView$4;-><init>(Lcom/anythink/basead/ui/BannerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/BannerView;)Lcom/anythink/basead/ui/BannerView$a;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/basead/ui/BannerView;->g:Lcom/anythink/basead/ui/BannerView$a;

    return-object p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 189
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 190
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 191
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/anythink/basead/ui/a/a;->a(Landroid/graphics/Canvas;III)V

    .line 192
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 193
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 178
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 179
    return-void
.end method
