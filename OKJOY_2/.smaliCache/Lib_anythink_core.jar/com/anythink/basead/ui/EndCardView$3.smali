.class final Lcom/anythink/basead/ui/EndCardView$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/EndCardView;->b(Lcom/anythink/core/common/d/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/basead/ui/EndCardView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/EndCardView;Ljava/lang/String;)V
    .registers 3

    .line 122
    iput-object p1, p0, Lcom/anythink/basead/ui/EndCardView$3;->b:Lcom/anythink/basead/ui/EndCardView;

    iput-object p2, p0, Lcom/anythink/basead/ui/EndCardView$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 133
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/anythink/basead/ui/EndCardView$3;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 126
    iget-object p1, p0, Lcom/anythink/basead/ui/EndCardView$3;->b:Lcom/anythink/basead/ui/EndCardView;

    invoke-static {p1}, Lcom/anythink/basead/ui/EndCardView;->d(Lcom/anythink/basead/ui/EndCardView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    :cond_11
    return-void
.end method
