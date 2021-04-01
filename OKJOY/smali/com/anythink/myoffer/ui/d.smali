.class public final Lcom/anythink/myoffer/ui/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 6

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/anythink/myoffer/ui/d;->a:Landroid/view/ViewGroup;

    .line 22
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/d;->b:Landroid/widget/ImageView;

    .line 23
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_loading_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 24
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_loading"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/ui/d;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/myoffer/ui/d;)Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 29
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 32
    :cond_b
    const/4 v0, 0x1

    const/high16 v1, 0x42480000    # 50.0f

    iget-object v2, p0, Lcom/anythink/myoffer/ui/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 33
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/myoffer/ui/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 39
    .line 1028
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 1029
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1032
    :cond_b
    const/4 v0, 0x1

    const/high16 v1, 0x42480000    # 50.0f

    iget-object v2, p0, Lcom/anythink/myoffer/ui/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 1033
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1034
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1035
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/myoffer/ui/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/myoffer/ui/d$1;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/d$1;-><init>(Lcom/anythink/myoffer/ui/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 56
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d;->a:Landroid/view/ViewGroup;

    new-instance v1, Lcom/anythink/myoffer/ui/d$2;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/d$2;-><init>(Lcom/anythink/myoffer/ui/d;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 65
    :cond_e
    return-void
.end method
