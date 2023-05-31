.class public final Lcom/sigmob/sdk/splash/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/c/l;
.implements Lcom/sigmob/sdk/splash/g;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/sigmob/sdk/splash/f;

.field private final c:Landroid/content/Context;

.field private d:Lcom/sigmob/sdk/splash/b;

.field private final e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

.field private f:Landroid/view/ViewGroup;

.field private g:I

.field private h:Lcom/sigmob/sdk/base/models/AdStatus;

.field private i:Lcom/sigmob/sdk/splash/SplashAdView;

.field private j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final k:Ljava/lang/Runnable;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Z

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/sdk/base/models/LoadAdRequest;ILcom/sigmob/sdk/splash/b;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/splash/h$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/splash/h$1;-><init>(Lcom/sigmob/sdk/splash/h;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->k:Ljava/lang/Runnable;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_27

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/view/WindowInsets;)V

    :cond_27
    iput-object p1, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->h:Lcom/sigmob/sdk/base/models/AdStatus;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/h;->f:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/sigmob/sdk/splash/h;->d:Lcom/sigmob/sdk/splash/b;

    new-instance v0, Lcom/sigmob/sdk/splash/f;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/splash/f;-><init>(Lcom/sigmob/sdk/base/common/s;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/h;->a(Landroid/app/Activity;)V

    :cond_52
    :goto_52
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->T()I

    move-result v0

    if-ne v1, v0, :cond_74

    move v0, v1

    :goto_5d
    if-nez v0, :cond_76

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/h;->d()V

    :goto_62
    return-void

    :cond_63
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_52

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->f:Landroid/view/ViewGroup;

    goto :goto_52

    :cond_74
    move v0, v2

    goto :goto_5d

    :cond_76
    invoke-virtual {p0, p4, v2}, Lcom/sigmob/sdk/splash/h;->a(IZ)V

    goto :goto_62
.end method

.method private a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/h;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/h;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "request_id"

    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sub_category"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    invoke-interface {v6, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "9"

    sget-object v3, Lcom/sigmob/sdk/base/common/b/b;->P:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .registers 14

    const/4 v11, 0x1

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v6, 0x2

    const/4 v9, -0x2

    const/4 v8, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->o:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->o:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->f:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->f:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iput v6, p0, Lcom/sigmob/sdk/splash/h;->s:I

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/splash/h;->s:I

    :cond_72
    :goto_72
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/sigmob/sdk/splash/h;->s:I

    invoke-direct {p0, v3, v0}, Lcom/sigmob/sdk/splash/h;->a(Landroid/widget/RelativeLayout;I)V

    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/sigmob/sdk/splash/h;->a(Landroid/widget/RelativeLayout;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/sigmob/sdk/splash/h;->b(Landroid/widget/RelativeLayout;Ljava/lang/String;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v0, p0, Lcom/sigmob/sdk/splash/h;->s:I

    if-eq v0, v6, :cond_f5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/sigmob/sdk/splash/h;->n:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_b3
    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x42c80000    # 100.0f

    iget-object v6, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v5

    invoke-direct {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->o:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/sigmob/sdk/splash/h;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_dd
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f1

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_f1
    iput v11, p0, Lcom/sigmob/sdk/splash/h;->s:I

    goto/16 :goto_72

    :cond_f5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x425c0000    # 55.0f

    iget-object v7, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v6

    invoke-direct {v0, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/sigmob/sdk/splash/h;->n:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v5, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_b3
.end method

.method private a(Landroid/widget/RelativeLayout;I)V
    .registers 7

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->n:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->n:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/splash/h;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_26
    const/high16 v0, 0x42700000    # 60.0f

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2d

    const/high16 v0, 0x42a00000    # 80.0f

    :cond_2d
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    packed-switch p2, :pswitch_data_62

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_46
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_4c
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_46

    :pswitch_52
    const/high16 v0, 0x41200000    # 10.0f

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_46

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_52
    .end packed-switch
.end method

.method private a(Landroid/widget/RelativeLayout;Ljava/lang/String;)V
    .registers 9

    const/16 v5, 0xa

    const/4 v4, -0x2

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    const-string v1, "#535353"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxEms(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/SigmobError;)V
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->h:Lcom/sigmob/sdk/base/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    :cond_10
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/h;->g()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->o:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->d:Lcom/sigmob/sdk/splash/b;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->d:Lcom/sigmob/sdk/splash/b;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/splash/b;->onSplashAdFailToPresent(Lcom/sigmob/sdk/base/models/SigmobError;)V

    iput-object v2, p0, Lcom/sigmob/sdk/splash/h;->d:Lcom/sigmob/sdk/splash/b;

    :cond_2c
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/f;->b()V

    :cond_35
    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->f()V

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a()V

    goto :goto_21
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/h;Lcom/sigmob/sdk/base/models/SigmobError;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/base/models/SigmobError;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/h;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/sigmob/sdk/splash/h;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/h;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/splash/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sub_category"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v1

    if-ne p4, v1, :cond_27

    const-string v1, "url"

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    const-string v1, "error_message"

    invoke-interface {v6, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "9"

    const/4 v3, 0x2

    move-object v1, p2

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 12

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_10

    const-string v1, "sub_category"

    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v2, "5"

    const/4 v3, 0x2

    move-object v1, p3

    move-object v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;J)Z
    .registers 8

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    new-instance v1, Lcom/sigmob/sdk/splash/SplashAdView;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/splash/SplashAdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    if-eqz v1, :cond_4

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->f:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v1, p2, p3}, Lcom/sigmob/sdk/splash/SplashAdView;->setBroadcastIdentifier(J)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->o:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v1}, Lcom/sigmob/sdk/splash/SplashAdView;->b()V

    :cond_2c
    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    iget v2, p0, Lcom/sigmob/sdk/splash/h;->s:I

    if-eqz v2, :cond_33

    const/4 v0, 0x1

    :cond_33
    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->setShowAppLogo(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    goto :goto_4
.end method

.method static synthetic b(Lcom/sigmob/sdk/splash/h;)Lcom/sigmob/sdk/splash/SplashAdView;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    return-object v0
.end method

.method private b(Landroid/widget/RelativeLayout;Ljava/lang/String;)V
    .registers 7

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->l:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->l:Landroid/widget/TextView;

    const-string v1, "#aaaaaa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->l:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->l:Landroid/widget/TextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->l:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/splash/h;)I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/splash/h;->g:I

    return v0
.end method

.method static synthetic d(Lcom/sigmob/sdk/splash/h;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/sigmob/sdk/splash/h;)I
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/splash/h;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sigmob/sdk/splash/h;->g:I

    return v0
.end method

.method private e()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_8
    const-string v1, "APP_TITLE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic f(Lcom/sigmob/sdk/splash/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_8
    const-string v1, "APP_DESC"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic g(Lcom/sigmob/sdk/splash/h;)Lcom/sigmob/sdk/base/models/LoadAdRequest;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    return-object v0
.end method

.method private g()Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string v1, "SPLASH_DISABLE_AD_HIDE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    :try_start_10
    const-string v1, "SPLASH_DISABLE_AD_HIDE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1b} :catch_1d

    move-result v0

    :goto_1c
    return v0

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private h()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sigmob/sdk/splash/h;->p:Z

    if-eqz v0, :cond_f

    iput-boolean v4, p0, Lcom/sigmob/sdk/splash/h;->p:Z

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->f:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/sigmob/sdk/splash/h;->q:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/f;->e:Lcom/sigmob/sdk/splash/d;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/f;->e:Lcom/sigmob/sdk/splash/d;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, v4, v2}, Lcom/sigmob/sdk/splash/d;->c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_24
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/f;->b()V

    :cond_29
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    :cond_34
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/h;->g()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->o:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_45
    :goto_45
    iput-object v3, p0, Lcom/sigmob/sdk/splash/h;->d:Lcom/sigmob/sdk/splash/b;

    iput-object v3, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->e()Lcom/sigmob/sdk/base/common/e;

    invoke-static {}, Lcom/sigmob/sdk/base/common/e;->f()V

    return-void

    :cond_50
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a()V

    goto :goto_45
.end method


# virtual methods
.method public a()V
    .registers 7

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v3, 0x0

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v4

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/h;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/base/models/SigmobError;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/h;->h()V

    return-void
.end method

.method protected a(IZ)V
    .registers 11

    const/4 v3, 0x0

    if-nez p2, :cond_e2

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_9d

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/e;->b(Ljava/lang/String;)Z

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreate_time()J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdExpiredTime()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_9b

    const/4 v0, 0x1

    :goto_56
    if-eqz v2, :cond_9d

    if-nez v0, :cond_9d

    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->h:Lcom/sigmob/sdk/base/models/AdStatus;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v4, v0

    const-string v0, "AD_UNIT_KEY"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "broadcastIdentifier"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0, v0, v4, v5}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;J)Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sigmob/sdk/splash/h;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/splash/f;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_9a
    return-void

    :cond_9b
    const/4 v0, 0x0

    goto :goto_56

    :cond_9d
    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->a:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/sigmob/sdk/splash/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "request_scene_type"

    sget-object v2, Lcom/sigmob/sdk/rewardVideoAd/a;->c:Lcom/sigmob/sdk/rewardVideoAd/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/rewardVideoAd/a;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->h:Lcom/sigmob/sdk/base/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/splash/h$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/splash/h$2;-><init>(Lcom/sigmob/sdk/splash/h;)V

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_d4
    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getAdsUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {v0, v1, p0}, Lcom/sigmob/sdk/base/c/k;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/c/l;)V

    goto :goto_9a

    :cond_e2
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "request_scene_type"

    sget-object v2, Lcom/sigmob/sdk/rewardVideoAd/a;->e:Lcom/sigmob/sdk/rewardVideoAd/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/rewardVideoAd/a;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/sigmob/sdk/splash/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_d4
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 8

    const-string v0, "1"

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sigmob/sdk/splash/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v2, v1

    iput-object p1, p0, Lcom/sigmob/sdk/splash/h;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v1, "AD_UNIT_KEY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "broadcastIdentifier"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->h:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v4, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    if-ne v1, v4, :cond_53

    invoke-direct {p0, p1, v2, v3}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;J)Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/h;->a()V

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/sigmob/sdk/splash/f;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_3e

    :cond_53
    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->h:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/base/models/AdStatus;

    if-ne v1, v2, :cond_3e

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/sigmob/sdk/splash/f;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_3e
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 9

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/base/models/SigmobError;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->d:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v4

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/h;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 11

    const/4 v2, 0x0

    const-string v0, "0"

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sigmob/sdk/splash/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/h;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/sdk/base/models/SigmobError;

    if-eq p1, v0, :cond_3b

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v1

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v4

    move-object v0, p0

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_3b
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/base/models/SigmobError;)V

    return-void
.end method

.method public b()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/f;->e:Lcom/sigmob/sdk/splash/d;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/f;->e:Lcom/sigmob/sdk/splash/d;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, v3, v2}, Lcom/sigmob/sdk/splash/d;->d(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_16
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/splash/SplashAdView;->setDuration(I)V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->h:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/base/models/AdStatus;

    if-ne v0, v2, :cond_13

    const-string v0, " next load"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->h:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    if-eq v0, v2, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->T()I

    move-result v0

    if-ne v1, v0, :cond_2b

    move v0, v1

    :goto_25
    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/h;->d()V

    goto :goto_19

    :cond_2b
    const/4 v0, 0x0

    goto :goto_25

    :cond_2d
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_77

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/splash/h;->q:I

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, p0, Lcom/sigmob/sdk/splash/h;->r:I

    iget v0, p0, Lcom/sigmob/sdk/splash/h;->r:I

    const/high16 v2, 0x8000000

    and-int/2addr v0, v2

    if-nez v0, :cond_6e

    iget v0, p0, Lcom/sigmob/sdk/splash/h;->q:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_6e

    iget v0, p0, Lcom/sigmob/sdk/splash/h;->q:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_77

    :cond_6e
    iput-boolean v1, p0, Lcom/sigmob/sdk/splash/h;->p:Z

    const/16 v0, 0x1006

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_77
    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->h:Lcom/sigmob/sdk/base/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/splash/h;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/splash/f;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/f;->e:Lcom/sigmob/sdk/splash/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/d;->k()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/splash/h;->g:I

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    iget v1, p0, Lcom/sigmob/sdk/splash/h;->g:I

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->setDuration(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->c()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/h;->a()V

    goto/16 :goto_19
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->h:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/e;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->getDuration()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->getDuration()I

    move-result v0

    iget v1, p0, Lcom/sigmob/sdk/splash/h;->g:I

    if-ge v0, v1, :cond_22

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/splash/h;->g:I

    :cond_22
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2b
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    iget v1, p0, Lcom/sigmob/sdk/splash/h;->g:I

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->setDuration(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/splash/SplashAdView;->setVisibility(I)V

    :cond_3b
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->d:Lcom/sigmob/sdk/splash/b;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->d:Lcom/sigmob/sdk/splash/b;

    invoke-interface {v0}, Lcom/sigmob/sdk/splash/b;->onSplashAdSuccessPresentScreen()V

    :cond_44
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/h;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .registers 7

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->i:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/h;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v3, 0x0

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v4

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/h;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/splash/h;->a(Lcom/sigmob/sdk/base/models/SigmobError;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/h;->h()V

    return-void
.end method

.method public d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sigmob/sdk/splash/h;->p:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/splash/h;->p:Z

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->f:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/sigmob/sdk/splash/h;->q:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_f
    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusClick:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->h:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sigmob/sdk/splash/h;->a:Landroid/os/Handler;

    :cond_2b
    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->d:Lcom/sigmob/sdk/splash/b;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->d:Lcom/sigmob/sdk/splash/b;

    invoke-interface {v0}, Lcom/sigmob/sdk/splash/b;->onSplashAdClicked()V

    :cond_34
    return-void
.end method

.method public e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->d:Lcom/sigmob/sdk/splash/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/splash/h;->d:Lcom/sigmob/sdk/splash/b;

    invoke-interface {v0}, Lcom/sigmob/sdk/splash/b;->onSplashClosed()V

    :cond_9
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/h;->h()V

    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/h;->h:Lcom/sigmob/sdk/base/models/AdStatus;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/e;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/splash/h;->a(IZ)V

    return-void
.end method
