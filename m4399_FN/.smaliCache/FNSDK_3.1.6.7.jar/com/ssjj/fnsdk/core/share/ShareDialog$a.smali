.class Lcom/ssjj/fnsdk/core/share/ShareDialog$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/share/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Lcom/ssjj/fnsdk/core/share/ShareDialog;


# direct methods
.method private constructor <init>(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->h:Lcom/ssjj/fnsdk/core/share/ShareDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->c:Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog;)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p1, p2, p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->d:I

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p1, p2, p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;F)I

    move-result p4

    iput p4, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->e:I

    invoke-static {p1, p2, p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->f:I

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-static {p1, p2, p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog;->a(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;Lcom/ssjj/fnsdk/core/share/ShareDialog$a;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;-><init>(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/ShareDialog$a;)Lcom/ssjj/fnsdk/core/share/ShareDialog;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->h:Lcom/ssjj/fnsdk/core/share/ShareDialog;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->b:Ljava/util/List;

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
    .registers 8

    if-nez p2, :cond_14

    new-instance p2, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->h:Lcom/ssjj/fnsdk/core/share/ShareDialog;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, p3, v0, v1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;-><init>(Lcom/ssjj/fnsdk/core/share/ShareDialog;Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/ShareDialog$b;)V

    new-instance p3, Lcom/ssjj/fnsdk/core/share/i;

    invoke-direct {p3, p0}, Lcom/ssjj/fnsdk/core/share/i;-><init>(Lcom/ssjj/fnsdk/core/share/ShareDialog$a;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    move-object p3, p2

    check-cast p3, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->setTag(Ljava/lang/Object;)V

    iget-object v1, p3, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->c:Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;

    invoke-interface {v2, v0}, Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;->onGetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->a:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->c:Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;

    invoke-interface {v3, v0}, Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;->onGetIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->d:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->g:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v0, v1}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->setPadding(IIII)V

    if-nez p1, :cond_6e

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->g:I

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->e:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->g:I

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->setPadding(IIII)V

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_6e
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_99

    iget p1, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->g:I

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->g:I

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->getPaddingBottom()I

    move-result v2

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->f:I

    add-int/2addr v2, v3

    invoke-virtual {p3, p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->setPadding(IIII)V

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/share/ShareDialog$b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/ShareDialog$a;->f:I

    add-int/2addr p3, v0

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_99
    return-object p2
.end method
