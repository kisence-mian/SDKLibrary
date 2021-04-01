.class public Lcom/anythink/nativead/views/AppRatingView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anythink/nativead/views/StarLevelView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p1, p0, Lcom/anythink/nativead/views/AppRatingView;->a:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object p1, p0, Lcom/anythink/nativead/views/AppRatingView;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-object p1, p0, Lcom/anythink/nativead/views/AppRatingView;->a:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 63
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public setRating(I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 52
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/anythink/nativead/views/AppRatingView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    .line 53
    iget-object v0, p0, Lcom/anythink/nativead/views/AppRatingView;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/nativead/views/StarLevelView;

    .line 54
    if-ge v1, p1, :cond_1c

    .line 55
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/anythink/nativead/views/StarLevelView;->setState(Z)V

    .line 52
    :goto_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 57
    :cond_1c
    invoke-virtual {v0, v2}, Lcom/anythink/nativead/views/StarLevelView;->setState(Z)V

    goto :goto_18

    .line 60
    :cond_20
    return-void
.end method

.method public setStarNum(I)V
    .registers 9

    .prologue
    const/high16 v6, 0x41800000    # 16.0f

    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lcom/anythink/nativead/views/AppRatingView;->b:Ljava/util/List;

    if-nez v0, :cond_e

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/views/AppRatingView;->b:Ljava/util/List;

    .line 33
    :cond_e
    iget-object v0, p0, Lcom/anythink/nativead/views/AppRatingView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    invoke-virtual {p0}, Lcom/anythink/nativead/views/AppRatingView;->removeAllViews()V

    .line 35
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/views/AppRatingView;->setOrientation(I)V

    move v0, v1

    .line 36
    :goto_1a
    if-ge v0, p1, :cond_55

    .line 37
    new-instance v2, Lcom/anythink/nativead/views/StarLevelView;

    invoke-virtual {p0}, Lcom/anythink/nativead/views/AppRatingView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/anythink/nativead/views/StarLevelView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/anythink/nativead/views/AppRatingView;->a:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/anythink/nativead/views/AppRatingView;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/anythink/nativead/views/AppRatingView;->a:Landroid/content/Context;

    .line 39
    invoke-static {v5, v6}, Lcom/anythink/nativead/views/AppRatingView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 40
    add-int/lit8 v4, p1, -0x1

    if-eq v0, v4, :cond_47

    .line 41
    invoke-virtual {p0}, Lcom/anythink/nativead/views/AppRatingView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v4, v5}, Lcom/anythink/nativead/views/AppRatingView;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 43
    :cond_47
    invoke-virtual {v2, v3}, Lcom/anythink/nativead/views/StarLevelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {p0, v2}, Lcom/anythink/nativead/views/AppRatingView;->addView(Landroid/view/View;)V

    .line 46
    iget-object v3, p0, Lcom/anythink/nativead/views/AppRatingView;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 48
    :cond_55
    return-void
.end method
