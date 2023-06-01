.class Lcom/ssjj/fnsdk/core/share/ShareDialog$b;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/share/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/ssjj/fnsdk/core/share/ShareDialog;


# direct methods
.method private constructor <init>(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;)V
    .registers 9

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->c:Lcom/ssjj/fnsdk/core/share/ShareDialog;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p1, p2, v0}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {p1, p2, v2}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->setOrientation(I)V

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->setPadding(IIII)V

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->setGravity(I)V

    const v4, -0x555556

    invoke-static {p1, v3, v4}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {p1, p2, v4}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;F)I

    move-result v4

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->a:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->a:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->a:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->b:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->b:Landroid/widget/TextView;

    const v2, -0xcccccd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->b:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p1, p2, v2}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->addView(Landroid/view/View;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/ShareDialog$b;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;-><init>(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;)V

    return-void
.end method
