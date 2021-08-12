.class public Lcom/anythink/basead/ui/BannerAdView;
.super Lcom/anythink/basead/ui/BaseAdView;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final v:I = 0x1

.field private static final w:I = 0x2


# instance fields
.field a:Lcom/anythink/basead/f/a;

.field b:Z

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field private u:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/anythink/basead/ui/BannerAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/ui/BannerAdView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseAdView;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Lcom/anythink/basead/f/a;)V
    .registers 5

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/BaseAdView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;)V

    .line 61
    iput-object p4, p0, Lcom/anythink/basead/ui/BannerAdView;->a:Lcom/anythink/basead/f/a;

    .line 63
    nop

    .line 1145
    new-instance p1, Lcom/anythink/basead/ui/BannerAdView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/BannerAdView$1;-><init>(Lcom/anythink/basead/ui/BannerAdView;)V

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BannerAdView;->a(Ljava/lang/Runnable;)V

    .line 64
    nop

    .line 1400
    new-instance p1, Lcom/anythink/basead/ui/BannerAdView$7;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/BannerAdView$7;-><init>(Lcom/anythink/basead/ui/BannerAdView;)V

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BannerAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1407
    iget-object p1, p0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    new-instance p2, Lcom/anythink/basead/ui/BannerAdView$8;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/BannerAdView$8;-><init>(Lcom/anythink/basead/ui/BannerAdView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 5

    .line 154
    nop

    .line 155
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v0, v0, Lcom/anythink/core/common/d/u;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 156
    iget-object p1, p0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast p1, Lcom/anythink/core/common/d/u;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/u;->z()I

    move-result p1

    .line 157
    packed-switch p1, :pswitch_data_32

    :pswitch_14
    move v1, v2

    goto :goto_1a

    .line 162
    :pswitch_16
    goto :goto_1a

    .line 159
    :pswitch_17
    nop

    .line 160
    move v1, v2

    goto :goto_31

    .line 165
    :goto_1a
    goto :goto_31

    :cond_1b
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v0, v0, Lcom/anythink/core/common/d/p;

    if-eqz v0, :cond_30

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {p1}, Lcom/anythink/basead/a/a/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 167
    move v1, v2

    goto :goto_31

    .line 169
    :cond_2f
    goto :goto_31

    .line 165
    :cond_30
    move v1, v2

    .line 172
    :goto_31
    return v1

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/basead/ui/BannerAdView;)V
    .registers 1

    .line 38
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->f()V

    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/BannerAdView;)V
    .registers 1

    .line 38
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->g()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 13

    .line 178
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_root"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 179
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "myoffer_banner_close"

    invoke-static {v1, v3, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    .line 180
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "myoffer_banner_ad_text"

    invoke-static {v1, v3, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 182
    iget-object v3, p0, Lcom/anythink/basead/ui/BannerAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/j;->i()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v3, :cond_70

    .line 183
    iget-object v3, p0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v3, p0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    const-string v6, "728x90"

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 186
    iget-object v3, p0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 187
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41b80000    # 23.0f

    invoke-static {v6, v7}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 189
    iget-object v6, p0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    goto :goto_75

    .line 192
    :cond_70
    iget-object v3, p0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_75
    :goto_75
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 200
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 201
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 202
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v0, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    .line 206
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/res/image/RecycleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 207
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v5, v3}, Lcom/anythink/basead/ui/BannerAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v3, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    .line 211
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Lcom/anythink/core/common/res/image/RecycleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 212
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v7

    new-instance v8, Lcom/anythink/core/common/res/e;

    const/4 v9, 0x1

    invoke-direct {v8, v9, p1}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v10, Lcom/anythink/basead/ui/BannerAdView$2;

    invoke-direct {v10, p0, p1, v3, v0}, Lcom/anythink/basead/ui/BannerAdView$2;-><init>(Lcom/anythink/basead/ui/BannerAdView;Ljava/lang/String;Lcom/anythink/core/common/res/image/RecycleImageView;Lcom/anythink/core/common/res/image/RecycleImageView;)V

    invoke-virtual {v7, v8, v10}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    .line 228
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 229
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 230
    invoke-virtual {p0, v3, v9, p1}, Lcom/anythink/basead/ui/BannerAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object p1, p0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_101

    .line 233
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "myoffer_banner_self_ad_logo"

    invoke-static {p1, v0, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 234
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v0

    new-instance v2, Lcom/anythink/core/common/res/e;

    iget-object v3, p0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v9, v3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/anythink/basead/ui/BannerAdView$3;

    invoke-direct {v3, p0, p1}, Lcom/anythink/basead/ui/BannerAdView$3;-><init>(Lcom/anythink/basead/ui/BannerAdView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    .line 249
    :cond_101
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->q()Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 250
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 252
    :cond_10f
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 255
    return-void
.end method

.method private static synthetic c(Lcom/anythink/basead/ui/BannerAdView;)V
    .registers 1

    .line 38
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->h()V

    return-void
.end method

.method private static l()V
    .registers 0

    .line 80
    return-void
.end method

.method private m()V
    .registers 20

    .line 83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/j;->h()Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v2, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v2, v2, Lcom/anythink/core/common/d/u;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 87
    :goto_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "300x250"

    const-string v6, "320x90"

    const-string v7, "320x50"

    const-string v9, "728x90"

    const/4 v10, 0x0

    const/4 v12, 0x1

    sparse-switch v3, :sswitch_data_4c8

    :cond_29
    goto :goto_4a

    :sswitch_2a
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x2

    goto :goto_4b

    :sswitch_32
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, v10

    goto :goto_4b

    :sswitch_3a
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x3

    goto :goto_4b

    :sswitch_42
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, v12

    goto :goto_4b

    :goto_4a
    const/4 v1, -0x1

    :goto_4b
    const/16 v3, 0x5a

    const/16 v13, 0x140

    const-string v14, "myoffer_banner_ad_layout_320x50"

    packed-switch v1, :pswitch_data_4da

    .line 123
    iput-object v7, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    .line 124
    iput v13, v0, Lcom/anythink/basead/ui/BannerAdView;->d:I

    .line 125
    const/16 v1, 0x32

    iput v1, v0, Lcom/anythink/basead/ui/BannerAdView;->e:I

    .line 126
    nop

    .line 127
    if-nez v2, :cond_c7

    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v1, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_c7

    .line 128
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/p;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/p;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_c7

    .line 111
    :pswitch_6e
    iput-object v9, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    .line 112
    const/16 v1, 0x2d8

    iput v1, v0, Lcom/anythink/basead/ui/BannerAdView;->d:I

    .line 113
    iput v3, v0, Lcom/anythink/basead/ui/BannerAdView;->e:I

    .line 114
    nop

    .line 115
    if-nez v2, :cond_87

    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v1, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_87

    .line 116
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/p;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/p;->x()Ljava/lang/String;

    move-result-object v2

    .line 118
    :cond_87
    iput-boolean v12, v0, Lcom/anythink/basead/ui/BannerAdView;->b:Z

    .line 119
    const-string v14, "myoffer_banner_ad_layout_728x90"

    goto :goto_c7

    .line 100
    :pswitch_8c
    iput-object v4, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    .line 101
    const/16 v1, 0x12c

    iput v1, v0, Lcom/anythink/basead/ui/BannerAdView;->d:I

    .line 102
    const/16 v1, 0xfa

    iput v1, v0, Lcom/anythink/basead/ui/BannerAdView;->e:I

    .line 103
    nop

    .line 104
    if-nez v2, :cond_a7

    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v1, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_a7

    .line 105
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/p;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/p;->w()Ljava/lang/String;

    move-result-object v2

    .line 107
    :cond_a7
    iput-boolean v12, v0, Lcom/anythink/basead/ui/BannerAdView;->b:Z

    .line 108
    const-string v14, "myoffer_banner_ad_layout_300x250"

    goto :goto_c7

    .line 89
    :pswitch_ac
    iput-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    .line 90
    iput v13, v0, Lcom/anythink/basead/ui/BannerAdView;->d:I

    .line 91
    iput v3, v0, Lcom/anythink/basead/ui/BannerAdView;->e:I

    .line 92
    nop

    .line 93
    if-nez v2, :cond_c3

    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v1, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_c3

    .line 94
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/p;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/p;->v()Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_c3
    iput-boolean v12, v0, Lcom/anythink/basead/ui/BannerAdView;->b:Z

    .line 97
    const-string v14, "myoffer_banner_ad_layout_320x90"

    .line 133
    :cond_c7
    :goto_c7
    nop

    .line 3154
    nop

    .line 3155
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v1, Lcom/anythink/core/common/d/u;

    if-eqz v1, :cond_e2

    .line 3156
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/u;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/u;->z()I

    move-result v1

    .line 3157
    packed-switch v1, :pswitch_data_4e4

    :pswitch_da
    move v1, v12

    goto :goto_e1

    .line 3162
    :pswitch_dc
    const/4 v1, 0x2

    goto :goto_e1

    .line 3159
    :pswitch_de
    nop

    .line 3160
    move v1, v12

    goto :goto_f9

    .line 3165
    :goto_e1
    goto :goto_f9

    :cond_e2
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v1, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_f8

    .line 3166
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f6

    invoke-static {v2}, Lcom/anythink/basead/a/a/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 3167
    move v1, v12

    goto :goto_f9

    .line 3169
    :cond_f6
    const/4 v1, 0x2

    goto :goto_f9

    .line 3165
    :cond_f8
    move v1, v12

    .line 3172
    :goto_f9
    nop

    .line 133
    const-string v3, "myoffer_banner_self_ad_logo"

    const-string v13, "myoffer_banner_ad_text"

    const-string v15, "myoffer_banner_close"

    const-string v8, "layout"

    const/16 v5, 0x8

    const-string v11, "id"

    if-ne v12, v1, :cond_22c

    .line 134
    sget-object v1, Lcom/anythink/basead/ui/BannerAdView;->TAG:Ljava/lang/String;

    const-string v4, "mode: pure picture"

    invoke-static {v1, v4}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "myoffer_banner_ad_layout_pure_picture"

    invoke-static {v4, v6, v8}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 136
    nop

    .line 3178
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "myoffer_banner_root"

    invoke-static {v1, v4, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 3179
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v15, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    .line 3180
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v13, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3182
    iget-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v6, v6, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v6}, Lcom/anythink/core/common/d/j;->i()I

    move-result v6

    if-nez v6, :cond_18a

    .line 3183
    iget-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3185
    iget-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18f

    .line 3186
    iget-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 3187
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x41b80000    # 23.0f

    invoke-static {v7, v8}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3188
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3189
    iget-object v7, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3190
    goto :goto_18f

    .line 3192
    :cond_18a
    iget-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3199
    :cond_18f
    :goto_18f
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3200
    const/4 v7, -0x1

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3201
    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 3202
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3205
    new-instance v1, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    .line 3206
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Lcom/anythink/core/common/res/image/RecycleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3207
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v10, v6}, Lcom/anythink/basead/ui/BannerAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3210
    new-instance v6, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    .line 3211
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/res/image/RecycleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3212
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v7

    new-instance v8, Lcom/anythink/core/common/res/e;

    invoke-direct {v8, v12, v2}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v9, Lcom/anythink/basead/ui/BannerAdView$2;

    invoke-direct {v9, v0, v2, v6, v1}, Lcom/anythink/basead/ui/BannerAdView$2;-><init>(Lcom/anythink/basead/ui/BannerAdView;Ljava/lang/String;Lcom/anythink/core/common/res/image/RecycleImageView;Lcom/anythink/core/common/res/image/RecycleImageView;)V

    invoke-virtual {v7, v8, v9}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    .line 3228
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3229
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3230
    invoke-virtual {v0, v6, v12, v1}, Lcom/anythink/basead/ui/BannerAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3232
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21a

    .line 3233
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3234
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/core/common/res/e;

    iget-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v6}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v12, v6}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/anythink/basead/ui/BannerAdView$3;

    invoke-direct {v6, v0, v1}, Lcom/anythink/basead/ui/BannerAdView$3;-><init>(Lcom/anythink/basead/ui/BannerAdView;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3, v6}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    .line 3249
    :cond_21a
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->q()Z

    move-result v1

    if-eqz v1, :cond_228

    .line 3250
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3252
    :cond_228
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 136
    return-void

    .line 138
    :cond_22c
    sget-object v1, Lcom/anythink/basead/ui/BannerAdView;->TAG:Ljava/lang/String;

    const-string v2, "mode: assemble banner"

    invoke-static {v1, v2}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v14, v8}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 140
    nop

    .line 3258
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_banner_icon"

    invoke-static {v1, v2, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/ui/component/RoundImageView;

    .line 3259
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v8, "myoffer_banner_ad_title"

    invoke-static {v2, v8, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3260
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v14, "myoffer_banner_desc"

    invoke-static {v8, v14, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 3261
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v12, "myoffer_banner_ad_install_btn"

    invoke-static {v14, v12, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 3262
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v15, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    .line 3263
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v13, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 3266
    iget-object v14, v0, Lcom/anythink/basead/ui/BannerAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v14, v14, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v14}, Lcom/anythink/core/common/d/j;->i()I

    move-result v14

    if-nez v14, :cond_2af

    const/4 v14, 0x1

    goto :goto_2b0

    :cond_2af
    move v14, v10

    .line 3267
    :goto_2b0
    if-eqz v14, :cond_2b9

    .line 3268
    iget-object v15, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v15, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_327

    .line 3270
    :cond_2b9
    iget-object v15, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v15, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3273
    iget-object v15, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_4ee

    :cond_2c7
    goto :goto_2e0

    :sswitch_2c8
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2c7

    const/4 v15, 0x2

    goto :goto_2e1

    :sswitch_2d0
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2c7

    const/4 v15, 0x1

    goto :goto_2e1

    :sswitch_2d8
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2c7

    move v15, v10

    goto :goto_2e1

    :goto_2e0
    const/4 v15, -0x1

    :goto_2e1
    packed-switch v15, :pswitch_data_4fc

    goto :goto_327

    .line 3285
    :pswitch_2e5
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3286
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v10, 0x42380000    # 46.0f

    invoke-static {v5, v10}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v15, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3287
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_327

    .line 3280
    :pswitch_2fb
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3281
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v10, v15}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v10

    iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3282
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3283
    goto :goto_327

    .line 3275
    :pswitch_311
    const/high16 v15, 0x41200000    # 10.0f

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3276
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v15}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v10

    iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3277
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3278
    nop

    .line 3292
    :goto_327
    iget-object v5, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_364

    .line 3293
    invoke-virtual {v1}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 3294
    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Lcom/anythink/basead/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 3295
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/anythink/basead/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 3296
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v15

    new-instance v10, Lcom/anythink/core/common/res/e;

    move-object/from16 v17, v13

    iget-object v13, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v13}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object v13

    move/from16 v18, v14

    const/4 v14, 0x1

    invoke-direct {v10, v14, v13}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    iget v13, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v14, Lcom/anythink/basead/ui/BannerAdView$4;

    invoke-direct {v14, v0, v1}, Lcom/anythink/basead/ui/BannerAdView$4;-><init>(Lcom/anythink/basead/ui/BannerAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    invoke-virtual {v15, v10, v13, v5, v14}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_368

    .line 3292
    :cond_364
    move-object/from16 v17, v13

    move/from16 v18, v14

    .line 3311
    :goto_368
    iget-object v5, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3312
    iget-object v5, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/h;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3313
    iget-object v5, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3315
    iget-object v5, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3b9

    .line 3316
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3317
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v5

    new-instance v8, Lcom/anythink/core/common/res/e;

    iget-object v10, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v10}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    invoke-direct {v8, v13, v10}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v10, Lcom/anythink/basead/ui/BannerAdView$5;

    invoke-direct {v10, v0, v3}, Lcom/anythink/basead/ui/BannerAdView$5;-><init>(Lcom/anythink/basead/ui/BannerAdView;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v8, v10}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    .line 3332
    :cond_3b9
    iget-boolean v3, v0, Lcom/anythink/basead/ui/BannerAdView;->b:Z

    if-eqz v3, :cond_403

    .line 3333
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "myoffer_banner_main_image"

    invoke-static {v3, v5, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/anythink/basead/ui/component/RoundImageView;

    .line 3334
    iget-object v5, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_400

    .line 3335
    invoke-virtual {v3}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 3336
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/anythink/basead/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 3337
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/anythink/basead/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 3338
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v10

    new-instance v11, Lcom/anythink/core/common/res/e;

    iget-object v13, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v13}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v8, v13}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v13, Lcom/anythink/basead/ui/BannerAdView$6;

    invoke-direct {v13, v0, v3}, Lcom/anythink/basead/ui/BannerAdView$6;-><init>(Lcom/anythink/basead/ui/BannerAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    invoke-virtual {v10, v11, v13}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    goto :goto_405

    .line 3334
    :cond_400
    const/4 v5, 0x3

    const/4 v8, 0x1

    goto :goto_405

    .line 3332
    :cond_403
    const/4 v5, 0x3

    const/4 v8, 0x1

    .line 3354
    :goto_405
    iget-object v3, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_417

    .line 3355
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4af

    .line 3357
    :cond_417
    const/16 v3, 0x8

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3361
    iget-object v3, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_506

    :cond_425
    goto :goto_445

    :sswitch_426
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_425

    const/4 v5, 0x2

    goto :goto_446

    :sswitch_42e
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_425

    const/4 v5, 0x0

    goto :goto_446

    :sswitch_436
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_425

    goto :goto_446

    :sswitch_43d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_425

    move v5, v8

    goto :goto_446

    :goto_445
    const/4 v5, -0x1

    :goto_446
    packed-switch v5, :pswitch_data_518

    .line 3380
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3381
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3382
    if-eqz v18, :cond_4a0

    .line 3383
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_4ac

    .line 3374
    :pswitch_463
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3375
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3377
    goto :goto_4ac

    .line 3369
    :pswitch_476
    invoke-virtual {v1}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3370
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3371
    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/component/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3372
    goto :goto_4af

    .line 3363
    :pswitch_48c
    invoke-virtual {v1}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3364
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3365
    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3366
    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/component/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3367
    goto :goto_4af

    .line 3385
    :cond_4a0
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3387
    :goto_4ac
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3392
    :goto_4af
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->q()Z

    move-result v1

    if-eqz v1, :cond_4c0

    .line 3393
    move-object/from16 v1, v17

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3395
    :cond_4c0
    move-object/from16 v1, v17

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    return-void

    :sswitch_data_4c8
    .sparse-switch
        -0x215ddd38 -> :sswitch_42
        0x59df59c2 -> :sswitch_3a
        0x59df5a3e -> :sswitch_32
        0x60b65fb2 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_4da
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_8c
        :pswitch_6e
    .end packed-switch

    :pswitch_data_4e4
    .packed-switch 0x1
        :pswitch_de
        :pswitch_da
        :pswitch_dc
    .end packed-switch

    :sswitch_data_4ee
    .sparse-switch
        0x59df59c2 -> :sswitch_2d8
        0x59df5a3e -> :sswitch_2d0
        0x60b65fb2 -> :sswitch_2c8
    .end sparse-switch

    :pswitch_data_4fc
    .packed-switch 0x0
        :pswitch_311
        :pswitch_2fb
        :pswitch_2e5
    .end packed-switch

    :sswitch_data_506
    .sparse-switch
        -0x215ddd38 -> :sswitch_43d
        0x59df59c2 -> :sswitch_436
        0x59df5a3e -> :sswitch_42e
        0x60b65fb2 -> :sswitch_426
    .end sparse-switch

    :pswitch_data_518
    .packed-switch 0x0
        :pswitch_48c
        :pswitch_476
        :pswitch_463
    .end packed-switch
.end method

.method private n()V
    .registers 2

    .line 145
    new-instance v0, Lcom/anythink/basead/ui/BannerAdView$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BannerAdView$1;-><init>(Lcom/anythink/basead/ui/BannerAdView;)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BannerAdView;->a(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method private o()V
    .registers 18

    .line 258
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_banner_icon"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/ui/component/RoundImageView;

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "myoffer_banner_ad_title"

    invoke-static {v2, v4, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "myoffer_banner_desc"

    invoke-static {v4, v5, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "myoffer_banner_ad_install_btn"

    invoke-static {v5, v6, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "myoffer_banner_close"

    invoke-static {v6, v7, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "myoffer_banner_ad_text"

    invoke-static {v6, v7, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 266
    iget-object v7, v0, Lcom/anythink/basead/ui/BannerAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v7, v7, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v7}, Lcom/anythink/core/common/d/j;->i()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_72

    move v7, v9

    goto :goto_73

    :cond_72
    move v7, v8

    .line 267
    :goto_73
    const-string v11, "728x90"

    const-string v12, "320x90"

    const-string v13, "320x50"

    const/high16 v14, 0x41200000    # 10.0f

    const/16 v10, 0x8

    if-eqz v7, :cond_86

    .line 268
    iget-object v15, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v15, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f0

    .line 270
    :cond_86
    iget-object v15, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v15, v10}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v15, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_288

    :cond_94
    goto :goto_ad

    :sswitch_95
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_94

    const/4 v15, 0x2

    goto :goto_ae

    :sswitch_9d
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_94

    move v15, v9

    goto :goto_ae

    :sswitch_a5
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_94

    move v15, v8

    goto :goto_ae

    :goto_ad
    const/4 v15, -0x1

    :goto_ae
    packed-switch v15, :pswitch_data_296

    goto :goto_f0

    .line 285
    :pswitch_b2
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v8, 0x42380000    # 46.0f

    invoke-static {v10, v8}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v8

    iput v8, v15, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 287
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f0

    .line 280
    :pswitch_c8
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v14}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v10

    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 282
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    goto :goto_f0

    .line 275
    :pswitch_dc
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v14}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v10

    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 277
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    nop

    .line 292
    :goto_f0
    iget-object v8, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v8}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v10, 0x3

    if-nez v8, :cond_126

    .line 293
    invoke-virtual {v1}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 294
    invoke-virtual {v1, v10}, Lcom/anythink/basead/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 295
    invoke-virtual {v1, v9}, Lcom/anythink/basead/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v15

    new-instance v14, Lcom/anythink/core/common/res/e;

    iget-object v10, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v10}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v14, v9, v10}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v9, Lcom/anythink/basead/ui/BannerAdView$4;

    invoke-direct {v9, v0, v1}, Lcom/anythink/basead/ui/BannerAdView$4;-><init>(Lcom/anythink/basead/ui/BannerAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    invoke-virtual {v15, v14, v10, v8, v9}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 311
    :cond_126
    iget-object v8, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v8}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v8, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v8}, Lcom/anythink/core/common/d/h;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v4, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v4}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v4, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v4}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_179

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v8, "myoffer_banner_self_ad_logo"

    invoke-static {v4, v8, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v8

    new-instance v9, Lcom/anythink/core/common/res/e;

    iget-object v10, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v10}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    invoke-direct {v9, v14, v10}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v10, Lcom/anythink/basead/ui/BannerAdView$5;

    invoke-direct {v10, v0, v4}, Lcom/anythink/basead/ui/BannerAdView$5;-><init>(Lcom/anythink/basead/ui/BannerAdView;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v9, v10}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    .line 332
    :cond_179
    iget-boolean v4, v0, Lcom/anythink/basead/ui/BannerAdView;->b:Z

    if-eqz v4, :cond_1c3

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v8, "myoffer_banner_main_image"

    invoke-static {v4, v8, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/anythink/basead/ui/component/RoundImageView;

    .line 334
    iget-object v4, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v4}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c0

    .line 335
    invoke-virtual {v3}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 336
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/anythink/basead/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 337
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/anythink/basead/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v9

    new-instance v10, Lcom/anythink/core/common/res/e;

    iget-object v14, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v14}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v8, v14}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v14, Lcom/anythink/basead/ui/BannerAdView$6;

    invoke-direct {v14, v0, v3}, Lcom/anythink/basead/ui/BannerAdView$6;-><init>(Lcom/anythink/basead/ui/BannerAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    invoke-virtual {v9, v10, v14}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    goto :goto_1c5

    .line 334
    :cond_1c0
    const/4 v4, 0x3

    const/4 v8, 0x1

    goto :goto_1c5

    .line 332
    :cond_1c3
    const/4 v4, 0x3

    const/4 v8, 0x1

    .line 354
    :goto_1c5
    iget-object v3, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d7

    .line 355
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_272

    .line 357
    :cond_1d7
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v3, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2a0

    :cond_1e5
    goto :goto_208

    :sswitch_1e6
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e5

    const/4 v9, 0x2

    goto :goto_209

    :sswitch_1ee
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e5

    const/4 v9, 0x0

    goto :goto_209

    :sswitch_1f6
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e5

    move v9, v4

    goto :goto_209

    :sswitch_1fe
    const-string v4, "300x250"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e5

    move v9, v8

    goto :goto_209

    :goto_208
    const/4 v9, -0x1

    :goto_209
    packed-switch v9, :pswitch_data_2b2

    .line 380
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 381
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 382
    if-eqz v7, :cond_263

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_26f

    .line 374
    :pswitch_226
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 377
    goto :goto_26f

    .line 369
    :pswitch_239
    invoke-virtual {v1}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 371
    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/component/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    goto :goto_272

    .line 363
    :pswitch_24f
    invoke-virtual {v1}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 364
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 365
    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 366
    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/component/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    goto :goto_272

    .line 385
    :cond_263
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 387
    :goto_26f
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    :goto_272
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->q()Z

    move-result v1

    if-eqz v1, :cond_281

    .line 393
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 395
    :cond_281
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    return-void

    nop

    :sswitch_data_288
    .sparse-switch
        0x59df59c2 -> :sswitch_a5
        0x59df5a3e -> :sswitch_9d
        0x60b65fb2 -> :sswitch_95
    .end sparse-switch

    :pswitch_data_296
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_c8
        :pswitch_b2
    .end packed-switch

    :sswitch_data_2a0
    .sparse-switch
        -0x215ddd38 -> :sswitch_1fe
        0x59df59c2 -> :sswitch_1f6
        0x59df5a3e -> :sswitch_1ee
        0x60b65fb2 -> :sswitch_1e6
    .end sparse-switch

    :pswitch_data_2b2
    .packed-switch 0x0
        :pswitch_24f
        :pswitch_239
        :pswitch_226
    .end packed-switch
.end method

.method private p()V
    .registers 3

    .line 400
    new-instance v0, Lcom/anythink/basead/ui/BannerAdView$7;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BannerAdView$7;-><init>(Lcom/anythink/basead/ui/BannerAdView;)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BannerAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    new-instance v1, Lcom/anythink/basead/ui/BannerAdView$8;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BannerAdView$8;-><init>(Lcom/anythink/basead/ui/BannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 20

    .line 74
    move-object/from16 v0, p0

    .line 2083
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/j;->h()Ljava/lang/String;

    move-result-object v1

    .line 2085
    iget-object v2, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v2, v2, Lcom/anythink/core/common/d/u;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 2087
    :goto_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "300x250"

    const-string v6, "320x90"

    const-string v7, "320x50"

    const-string v9, "728x90"

    const/4 v10, 0x0

    const/4 v12, 0x1

    sparse-switch v3, :sswitch_data_4c8

    :cond_29
    goto :goto_4a

    :sswitch_2a
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x2

    goto :goto_4b

    :sswitch_32
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, v10

    goto :goto_4b

    :sswitch_3a
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x3

    goto :goto_4b

    :sswitch_42
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, v12

    goto :goto_4b

    :goto_4a
    const/4 v1, -0x1

    :goto_4b
    const/16 v3, 0x5a

    const/16 v13, 0x140

    const-string v14, "myoffer_banner_ad_layout_320x50"

    packed-switch v1, :pswitch_data_4da

    .line 2123
    iput-object v7, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    .line 2124
    iput v13, v0, Lcom/anythink/basead/ui/BannerAdView;->d:I

    .line 2125
    const/16 v1, 0x32

    iput v1, v0, Lcom/anythink/basead/ui/BannerAdView;->e:I

    .line 2126
    nop

    .line 2127
    if-nez v2, :cond_c7

    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v1, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_c7

    .line 2128
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/p;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/p;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_c7

    .line 2111
    :pswitch_6e
    iput-object v9, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    .line 2112
    const/16 v1, 0x2d8

    iput v1, v0, Lcom/anythink/basead/ui/BannerAdView;->d:I

    .line 2113
    iput v3, v0, Lcom/anythink/basead/ui/BannerAdView;->e:I

    .line 2114
    nop

    .line 2115
    if-nez v2, :cond_87

    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v1, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_87

    .line 2116
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/p;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/p;->x()Ljava/lang/String;

    move-result-object v2

    .line 2118
    :cond_87
    iput-boolean v12, v0, Lcom/anythink/basead/ui/BannerAdView;->b:Z

    .line 2119
    const-string v14, "myoffer_banner_ad_layout_728x90"

    goto :goto_c7

    .line 2100
    :pswitch_8c
    iput-object v4, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    .line 2101
    const/16 v1, 0x12c

    iput v1, v0, Lcom/anythink/basead/ui/BannerAdView;->d:I

    .line 2102
    const/16 v1, 0xfa

    iput v1, v0, Lcom/anythink/basead/ui/BannerAdView;->e:I

    .line 2103
    nop

    .line 2104
    if-nez v2, :cond_a7

    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v1, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_a7

    .line 2105
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/p;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/p;->w()Ljava/lang/String;

    move-result-object v2

    .line 2107
    :cond_a7
    iput-boolean v12, v0, Lcom/anythink/basead/ui/BannerAdView;->b:Z

    .line 2108
    const-string v14, "myoffer_banner_ad_layout_300x250"

    goto :goto_c7

    .line 2089
    :pswitch_ac
    iput-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    .line 2090
    iput v13, v0, Lcom/anythink/basead/ui/BannerAdView;->d:I

    .line 2091
    iput v3, v0, Lcom/anythink/basead/ui/BannerAdView;->e:I

    .line 2092
    nop

    .line 2093
    if-nez v2, :cond_c3

    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v1, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_c3

    .line 2094
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/p;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/p;->v()Ljava/lang/String;

    move-result-object v2

    .line 2096
    :cond_c3
    iput-boolean v12, v0, Lcom/anythink/basead/ui/BannerAdView;->b:Z

    .line 2097
    const-string v14, "myoffer_banner_ad_layout_320x90"

    .line 2133
    :cond_c7
    :goto_c7
    nop

    .line 2154
    nop

    .line 2155
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v1, Lcom/anythink/core/common/d/u;

    if-eqz v1, :cond_e2

    .line 2156
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/u;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/u;->z()I

    move-result v1

    .line 2157
    packed-switch v1, :pswitch_data_4e4

    :pswitch_da
    move v1, v12

    goto :goto_e1

    .line 2162
    :pswitch_dc
    const/4 v1, 0x2

    goto :goto_e1

    .line 2159
    :pswitch_de
    nop

    .line 2160
    move v1, v12

    goto :goto_f9

    .line 2165
    :goto_e1
    goto :goto_f9

    :cond_e2
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v1, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_f8

    .line 2166
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f6

    invoke-static {v2}, Lcom/anythink/basead/a/a/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 2167
    move v1, v12

    goto :goto_f9

    .line 2169
    :cond_f6
    const/4 v1, 0x2

    goto :goto_f9

    .line 2165
    :cond_f8
    move v1, v12

    .line 2172
    :goto_f9
    nop

    .line 2133
    const-string v3, "myoffer_banner_self_ad_logo"

    const-string v13, "myoffer_banner_ad_text"

    const-string v15, "myoffer_banner_close"

    const-string v8, "layout"

    const/16 v5, 0x8

    const-string v11, "id"

    if-ne v12, v1, :cond_22c

    .line 2134
    sget-object v1, Lcom/anythink/basead/ui/BannerAdView;->TAG:Ljava/lang/String;

    const-string v4, "mode: pure picture"

    invoke-static {v1, v4}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "myoffer_banner_ad_layout_pure_picture"

    invoke-static {v4, v6, v8}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2136
    nop

    .line 2178
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "myoffer_banner_root"

    invoke-static {v1, v4, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2179
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v15, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    .line 2180
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v13, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2182
    iget-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v6, v6, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v6}, Lcom/anythink/core/common/d/j;->i()I

    move-result v6

    if-nez v6, :cond_18a

    .line 2183
    iget-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2185
    iget-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    invoke-static {v9, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18f

    .line 2186
    iget-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 2187
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x41b80000    # 23.0f

    invoke-static {v7, v8}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2188
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2189
    iget-object v7, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2190
    goto :goto_18f

    .line 2192
    :cond_18a
    iget-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2199
    :cond_18f
    :goto_18f
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2200
    const/4 v7, -0x1

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2201
    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2202
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2205
    new-instance v1, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    .line 2206
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Lcom/anythink/core/common/res/image/RecycleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2207
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v10, v6}, Lcom/anythink/basead/ui/BannerAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2210
    new-instance v6, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    .line 2211
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/res/image/RecycleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2212
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v7

    new-instance v8, Lcom/anythink/core/common/res/e;

    invoke-direct {v8, v12, v2}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v9, Lcom/anythink/basead/ui/BannerAdView$2;

    invoke-direct {v9, v0, v2, v6, v1}, Lcom/anythink/basead/ui/BannerAdView$2;-><init>(Lcom/anythink/basead/ui/BannerAdView;Ljava/lang/String;Lcom/anythink/core/common/res/image/RecycleImageView;Lcom/anythink/core/common/res/image/RecycleImageView;)V

    invoke-virtual {v7, v8, v9}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    .line 2228
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2229
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2230
    invoke-virtual {v0, v6, v12, v1}, Lcom/anythink/basead/ui/BannerAdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2232
    iget-object v1, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21a

    .line 2233
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2234
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/core/common/res/e;

    iget-object v6, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v6}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v12, v6}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/anythink/basead/ui/BannerAdView$3;

    invoke-direct {v6, v0, v1}, Lcom/anythink/basead/ui/BannerAdView$3;-><init>(Lcom/anythink/basead/ui/BannerAdView;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3, v6}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    .line 2249
    :cond_21a
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->q()Z

    move-result v1

    if-eqz v1, :cond_228

    .line 2250
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2252
    :cond_228
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2136
    return-void

    .line 2138
    :cond_22c
    sget-object v1, Lcom/anythink/basead/ui/BannerAdView;->TAG:Ljava/lang/String;

    const-string v2, "mode: assemble banner"

    invoke-static {v1, v2}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v14, v8}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2140
    nop

    .line 2258
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_banner_icon"

    invoke-static {v1, v2, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/ui/component/RoundImageView;

    .line 2259
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v8, "myoffer_banner_ad_title"

    invoke-static {v2, v8, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2260
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v14, "myoffer_banner_desc"

    invoke-static {v8, v14, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2261
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v12, "myoffer_banner_ad_install_btn"

    invoke-static {v14, v12, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2262
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v15, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    .line 2263
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v13, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 2266
    iget-object v14, v0, Lcom/anythink/basead/ui/BannerAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v14, v14, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v14}, Lcom/anythink/core/common/d/j;->i()I

    move-result v14

    if-nez v14, :cond_2af

    const/4 v14, 0x1

    goto :goto_2b0

    :cond_2af
    move v14, v10

    .line 2267
    :goto_2b0
    if-eqz v14, :cond_2b9

    .line 2268
    iget-object v15, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v15, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_327

    .line 2270
    :cond_2b9
    iget-object v15, v0, Lcom/anythink/basead/ui/BannerAdView;->u:Landroid/view/View;

    invoke-virtual {v15, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2273
    iget-object v15, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_4ee

    :cond_2c7
    goto :goto_2e0

    :sswitch_2c8
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2c7

    const/4 v15, 0x2

    goto :goto_2e1

    :sswitch_2d0
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2c7

    const/4 v15, 0x1

    goto :goto_2e1

    :sswitch_2d8
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2c7

    move v15, v10

    goto :goto_2e1

    :goto_2e0
    const/4 v15, -0x1

    :goto_2e1
    packed-switch v15, :pswitch_data_4fc

    goto :goto_327

    .line 2285
    :pswitch_2e5
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2286
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v10, 0x42380000    # 46.0f

    invoke-static {v5, v10}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v15, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2287
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_327

    .line 2280
    :pswitch_2fb
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2281
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v10, v15}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v10

    iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2282
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2283
    goto :goto_327

    .line 2275
    :pswitch_311
    const/high16 v15, 0x41200000    # 10.0f

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2276
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v15}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v10

    iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2277
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2278
    nop

    .line 2292
    :goto_327
    iget-object v5, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_364

    .line 2293
    invoke-virtual {v1}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 2294
    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Lcom/anythink/basead/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 2295
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/anythink/basead/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 2296
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v15

    new-instance v10, Lcom/anythink/core/common/res/e;

    move-object/from16 v17, v13

    iget-object v13, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v13}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object v13

    move/from16 v18, v14

    const/4 v14, 0x1

    invoke-direct {v10, v14, v13}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    iget v13, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v14, Lcom/anythink/basead/ui/BannerAdView$4;

    invoke-direct {v14, v0, v1}, Lcom/anythink/basead/ui/BannerAdView$4;-><init>(Lcom/anythink/basead/ui/BannerAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    invoke-virtual {v15, v10, v13, v5, v14}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_368

    .line 2292
    :cond_364
    move-object/from16 v17, v13

    move/from16 v18, v14

    .line 2311
    :goto_368
    iget-object v5, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2312
    iget-object v5, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/h;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2313
    iget-object v5, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2315
    iget-object v5, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3b9

    .line 2316
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2317
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v5

    new-instance v8, Lcom/anythink/core/common/res/e;

    iget-object v10, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v10}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    invoke-direct {v8, v13, v10}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v10, Lcom/anythink/basead/ui/BannerAdView$5;

    invoke-direct {v10, v0, v3}, Lcom/anythink/basead/ui/BannerAdView$5;-><init>(Lcom/anythink/basead/ui/BannerAdView;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v8, v10}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    .line 2332
    :cond_3b9
    iget-boolean v3, v0, Lcom/anythink/basead/ui/BannerAdView;->b:Z

    if-eqz v3, :cond_403

    .line 2333
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "myoffer_banner_main_image"

    invoke-static {v3, v5, v11}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/BannerAdView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/anythink/basead/ui/component/RoundImageView;

    .line 2334
    iget-object v5, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v5}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_400

    .line 2335
    invoke-virtual {v3}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2336
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/anythink/basead/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 2337
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/anythink/basead/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 2338
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v10

    new-instance v11, Lcom/anythink/core/common/res/e;

    iget-object v13, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v13}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v8, v13}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v13, Lcom/anythink/basead/ui/BannerAdView$6;

    invoke-direct {v13, v0, v3}, Lcom/anythink/basead/ui/BannerAdView$6;-><init>(Lcom/anythink/basead/ui/BannerAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    invoke-virtual {v10, v11, v13}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    goto :goto_405

    .line 2334
    :cond_400
    const/4 v5, 0x3

    const/4 v8, 0x1

    goto :goto_405

    .line 2332
    :cond_403
    const/4 v5, 0x3

    const/4 v8, 0x1

    .line 2354
    :goto_405
    iget-object v3, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_417

    .line 2355
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4af

    .line 2357
    :cond_417
    const/16 v3, 0x8

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2361
    iget-object v3, v0, Lcom/anythink/basead/ui/BannerAdView;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_506

    :cond_425
    goto :goto_445

    :sswitch_426
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_425

    const/4 v5, 0x2

    goto :goto_446

    :sswitch_42e
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_425

    const/4 v5, 0x0

    goto :goto_446

    :sswitch_436
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_425

    goto :goto_446

    :sswitch_43d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_425

    move v5, v8

    goto :goto_446

    :goto_445
    const/4 v5, -0x1

    :goto_446
    packed-switch v5, :pswitch_data_518

    .line 2380
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2381
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2382
    if-eqz v18, :cond_4a0

    .line 2383
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_4ac

    .line 2374
    :pswitch_463
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2375
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2377
    goto :goto_4ac

    .line 2369
    :pswitch_476
    invoke-virtual {v1}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2370
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2371
    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/component/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2372
    goto :goto_4af

    .line 2363
    :pswitch_48c
    invoke-virtual {v1}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2364
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2365
    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2366
    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/component/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2367
    goto :goto_4af

    .line 2385
    :cond_4a0
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2387
    :goto_4ac
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2392
    :goto_4af
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->q()Z

    move-result v1

    if-eqz v1, :cond_4c0

    .line 2393
    move-object/from16 v1, v17

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2395
    :cond_4c0
    move-object/from16 v1, v17

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    return-void

    :sswitch_data_4c8
    .sparse-switch
        -0x215ddd38 -> :sswitch_42
        0x59df59c2 -> :sswitch_3a
        0x59df5a3e -> :sswitch_32
        0x60b65fb2 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_4da
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_8c
        :pswitch_6e
    .end packed-switch

    :pswitch_data_4e4
    .packed-switch 0x1
        :pswitch_de
        :pswitch_da
        :pswitch_dc
    .end packed-switch

    :sswitch_data_4ee
    .sparse-switch
        0x59df59c2 -> :sswitch_2d8
        0x59df5a3e -> :sswitch_2d0
        0x60b65fb2 -> :sswitch_2c8
    .end sparse-switch

    :pswitch_data_4fc
    .packed-switch 0x0
        :pswitch_311
        :pswitch_2fb
        :pswitch_2e5
    .end packed-switch

    :sswitch_data_506
    .sparse-switch
        -0x215ddd38 -> :sswitch_43d
        0x59df59c2 -> :sswitch_436
        0x59df5a3e -> :sswitch_42e
        0x60b65fb2 -> :sswitch_426
    .end sparse-switch

    :pswitch_data_518
    .packed-switch 0x0
        :pswitch_48c
        :pswitch_476
        :pswitch_463
    .end packed-switch
.end method

.method protected final a(Z)V
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerAdView;->a:Lcom/anythink/basead/f/a;

    if-eqz v0, :cond_7

    .line 447
    invoke-interface {v0, p1}, Lcom/anythink/basead/f/a;->onDeeplinkCallback(Z)V

    .line 449
    :cond_7
    return-void
.end method

.method protected final b()V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2, v0, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 428
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerAdView;->a:Lcom/anythink/basead/f/a;

    if-eqz v0, :cond_12

    .line 429
    invoke-interface {v0}, Lcom/anythink/basead/f/a;->onAdShow()V

    .line 431
    :cond_12
    return-void
.end method

.method protected final c()V
    .registers 4

    .line 435
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BannerAdView;->k()Lcom/anythink/basead/c/b;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/h;->g:Lcom/anythink/basead/c/b;

    .line 437
    iget-object v1, p0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    const/16 v2, 0x9

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 439
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerAdView;->a:Lcom/anythink/basead/f/a;

    if-eqz v0, :cond_18

    .line 440
    invoke-interface {v0}, Lcom/anythink/basead/f/a;->onAdClick()V

    .line 442
    :cond_18
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 419
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->onAttachedToWindow()V

    .line 421
    nop

    .line 4038
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->h()V

    .line 422
    return-void
.end method
