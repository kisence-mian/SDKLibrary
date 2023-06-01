.class Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/share/page/SelectTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const/4 p3, 0x1

    if-nez p2, :cond_7f

    new-instance p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;

    invoke-direct {p2, p0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;-><init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-virtual {v5}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;->a:Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;->a:Landroid/widget/ImageView;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    iget-object v4, p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;->a:Landroid/widget/ImageView;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v4, p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, p3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;->b:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;->b:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_88

    :cond_7f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;

    move-object v8, v0

    move-object v0, p2

    move-object p2, v8

    :goto_88
    iget-object v1, p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->a(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)[I

    move-result-object v1

    aget p1, v1, p1

    if-ne p1, p3, :cond_af

    iget-object p1, p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;->a:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p3}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->b(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;->b:Landroid/widget/TextView;

    const-string p2, "#FF7F24"

    goto :goto_be

    :cond_af
    iget-object p1, p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;->a:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p3}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->c(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p2, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a$a;->b:Landroid/widget/TextView;

    const-string p2, "#8C8C8C"

    :goto_be
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method
