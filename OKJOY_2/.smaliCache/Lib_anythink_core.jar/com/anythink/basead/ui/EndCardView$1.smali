.class final Lcom/anythink/basead/ui/EndCardView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/EndCardView;->a(Lcom/anythink/core/common/d/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/h;

.field final synthetic b:Lcom/anythink/basead/ui/EndCardView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/EndCardView;Lcom/anythink/core/common/d/h;)V
    .registers 3

    .line 55
    iput-object p1, p0, Lcom/anythink/basead/ui/EndCardView$1;->b:Lcom/anythink/basead/ui/EndCardView;

    iput-object p2, p0, Lcom/anythink/basead/ui/EndCardView$1;->a:Lcom/anythink/core/common/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 68
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/anythink/basead/ui/EndCardView$1;->a:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 59
    iget-object p1, p0, Lcom/anythink/basead/ui/EndCardView$1;->b:Lcom/anythink/basead/ui/EndCardView;

    invoke-static {p1}, Lcom/anythink/basead/ui/EndCardView;->a(Lcom/anythink/basead/ui/EndCardView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    iget-object p1, p0, Lcom/anythink/basead/ui/EndCardView$1;->b:Lcom/anythink/basead/ui/EndCardView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/anythink/basead/ui/EndCardView$1;->b:Lcom/anythink/basead/ui/EndCardView;

    invoke-static {p2}, Lcom/anythink/basead/ui/EndCardView;->b(Lcom/anythink/basead/ui/EndCardView;)Lcom/anythink/basead/ui/component/RoundImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/anythink/basead/ui/component/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    :cond_28
    return-void
.end method
