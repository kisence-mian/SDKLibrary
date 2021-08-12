.class public Lcom/anythink/nativead/views/AppRatingView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/nativead/views/StarLevelView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/anythink/nativead/views/AppRatingView;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object p1, p0, Lcom/anythink/nativead/views/AppRatingView;->a:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object p1, p0, Lcom/anythink/nativead/views/AppRatingView;->a:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 2

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 70
    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public setRating(I)V
    .registers 6

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/anythink/nativead/views/AppRatingView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 60
    iget-object v2, p0, Lcom/anythink/nativead/views/AppRatingView;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/nativead/views/StarLevelView;

    .line 61
    if-ge v1, p1, :cond_19

    .line 62
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/anythink/nativead/views/StarLevelView;->setState(Z)V

    goto :goto_1c

    .line 64
    :cond_19
    invoke-virtual {v2, v0}, Lcom/anythink/nativead/views/StarLevelView;->setState(Z)V

    .line 59
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 67
    :cond_1f
    return-void
.end method

.method public setStarNum(I)V
    .registers 9

    .line 37
    iget-object v0, p0, Lcom/anythink/nativead/views/AppRatingView;->b:Ljava/util/List;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/views/AppRatingView;->b:Ljava/util/List;

    .line 40
    :cond_b
    iget-object v0, p0, Lcom/anythink/nativead/views/AppRatingView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    invoke-virtual {p0}, Lcom/anythink/nativead/views/AppRatingView;->removeAllViews()V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/views/AppRatingView;->setOrientation(I)V

    .line 43
    move v1, v0

    :goto_18
    if-ge v1, p1, :cond_55

    .line 44
    new-instance v2, Lcom/anythink/nativead/views/StarLevelView;

    invoke-virtual {p0}, Lcom/anythink/nativead/views/AppRatingView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/anythink/nativead/views/StarLevelView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/anythink/nativead/views/AppRatingView;->a:Landroid/content/Context;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v5}, Lcom/anythink/nativead/views/AppRatingView;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v6, p0, Lcom/anythink/nativead/views/AppRatingView;->a:Landroid/content/Context;

    .line 46
    invoke-static {v6, v5}, Lcom/anythink/nativead/views/AppRatingView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    add-int/lit8 v4, p1, -0x1

    if-eq v1, v4, :cond_47

    .line 48
    invoke-virtual {p0}, Lcom/anythink/nativead/views/AppRatingView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v4, v5}, Lcom/anythink/nativead/views/AppRatingView;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v0, v0, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 50
    :cond_47
    invoke-virtual {v2, v3}, Lcom/anythink/nativead/views/StarLevelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/anythink/nativead/views/AppRatingView;->addView(Landroid/view/View;)V

    .line 53
    iget-object v3, p0, Lcom/anythink/nativead/views/AppRatingView;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 55
    :cond_55
    return-void
.end method
