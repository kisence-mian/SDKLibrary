.class public final Lcom/anythink/basead/ui/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/anythink/basead/ui/a;->a:Landroid/view/ViewGroup;

    .line 29
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anythink/basead/ui/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/a;->b:Landroid/widget/ImageView;

    .line 30
    iget-object v0, p0, Lcom/anythink/basead/ui/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_loading_id"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 31
    iget-object p1, p0, Lcom/anythink/basead/ui/a;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anythink/basead/ui/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_loading"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/a;)Landroid/widget/ImageView;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/basead/ui/a;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/anythink/basead/ui/a;)Landroid/view/ViewGroup;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/basead/ui/a;->a:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private c()V
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/anythink/basead/ui/a;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 36
    iget-object v1, p0, Lcom/anythink/basead/ui/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    :cond_9
    const/4 v0, 0x1

    const/high16 v1, 0x42480000    # 50.0f

    iget-object v2, p0, Lcom/anythink/basead/ui/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 40
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 41
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    iget-object v0, p0, Lcom/anythink/basead/ui/a;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/basead/ui/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 46
    nop

    .line 1035
    iget-object v0, p0, Lcom/anythink/basead/ui/a;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 1036
    iget-object v1, p0, Lcom/anythink/basead/ui/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1039
    :cond_a
    const/4 v0, 0x1

    const/high16 v1, 0x42480000    # 50.0f

    iget-object v2, p0, Lcom/anythink/basead/ui/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 1040
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1041
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1042
    iget-object v0, p0, Lcom/anythink/basead/ui/a;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/basead/ui/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v0, p0, Lcom/anythink/basead/ui/a;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/basead/ui/a$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/a$1;-><init>(Lcom/anythink/basead/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method public final b()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/anythink/basead/ui/a;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 63
    iget-object v0, p0, Lcom/anythink/basead/ui/a;->a:Landroid/view/ViewGroup;

    new-instance v1, Lcom/anythink/basead/ui/a$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/a$2;-><init>(Lcom/anythink/basead/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_e
    return-void
.end method
