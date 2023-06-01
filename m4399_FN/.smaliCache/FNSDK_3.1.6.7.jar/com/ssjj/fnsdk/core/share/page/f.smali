.class Lcom/ssjj/fnsdk/core/share/page/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/f;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/f;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->d(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/f;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->b(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/f;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->e(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$a;->notifyDataSetChanged()V

    return-void
.end method
