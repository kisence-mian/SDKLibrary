.class Lcom/ssjj/fnsdk/core/share/page/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;->onInputingAfter(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    move-result-object p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->i(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView$SelectTextListener;->onInputingBefore(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->f(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->g(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->d(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->c(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_45

    :cond_2a
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->f(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->h(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->d(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/g;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->b(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_45
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
