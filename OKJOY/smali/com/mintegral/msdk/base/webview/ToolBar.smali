.class public Lcom/mintegral/msdk/base/webview/ToolBar;
.super Landroid/widget/LinearLayout;
.source "ToolBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->a()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->a()V

    .line 29
    return-void
.end method

.method private a()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p0, v2}, Lcom/mintegral/msdk/base/webview/ToolBar;->setOrientation(I)V

    .line 46
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v0

    .line 47
    invoke-virtual {p0, v2, v0, v2, v0}, Lcom/mintegral/msdk/base/webview/ToolBar;->setPadding(IIII)V

    .line 69
    invoke-direct {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    const-string v1, "backward"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mintegral_cm_backward"

    const-string v4, "drawable"

    .line 74
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->a()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/webview/ToolBar;->addView(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 79
    const-string v1, "forward"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mintegral_cm_forward"

    const-string v4, "drawable"

    .line 82
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->a()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/webview/ToolBar;->addView(Landroid/view/View;)V

    .line 86
    invoke-direct {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 87
    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mintegral_cm_refresh"

    const-string v4, "drawable"

    .line 90
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->a()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/webview/ToolBar;->addView(Landroid/view/View;)V

    .line 94
    invoke-direct {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 95
    const-string v1, "exits"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mintegral_cm_exits"

    const-string v4, "drawable"

    .line 99
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->a()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/webview/ToolBar;->addView(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method private b()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 106
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 120
    return-object v0
.end method


# virtual methods
.method public getItem(Ljava/lang/String;)Landroid/view/View;
    .registers 3

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/base/webview/ToolBar;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .registers 5

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/ToolBar;->getChildCount()I

    move-result v1

    .line 33
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_11

    .line 34
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/webview/ToolBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 36
    :cond_11
    return-void
.end method
