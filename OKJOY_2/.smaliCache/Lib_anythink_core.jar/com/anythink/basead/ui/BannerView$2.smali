.class final Lcom/anythink/basead/ui/BannerView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BannerView;->a(Lcom/anythink/core/common/d/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/basead/ui/BannerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BannerView;Ljava/lang/String;)V
    .registers 3

    .line 97
    iput-object p1, p0, Lcom/anythink/basead/ui/BannerView$2;->b:Lcom/anythink/basead/ui/BannerView;

    iput-object p2, p0, Lcom/anythink/basead/ui/BannerView$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 108
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerView$2;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 101
    iget-object p1, p0, Lcom/anythink/basead/ui/BannerView$2;->b:Lcom/anythink/basead/ui/BannerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/BannerView;->b(Lcom/anythink/basead/ui/BannerView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    :cond_11
    return-void
.end method
