.class final Lcom/anythink/basead/ui/BannerAdView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BannerAdView;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/core/common/res/image/RecycleImageView;

.field final synthetic c:Lcom/anythink/core/common/res/image/RecycleImageView;

.field final synthetic d:Lcom/anythink/basead/ui/BannerAdView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BannerAdView;Ljava/lang/String;Lcom/anythink/core/common/res/image/RecycleImageView;Lcom/anythink/core/common/res/image/RecycleImageView;)V
    .registers 5

    .line 212
    iput-object p1, p0, Lcom/anythink/basead/ui/BannerAdView$2;->d:Lcom/anythink/basead/ui/BannerAdView;

    iput-object p2, p0, Lcom/anythink/basead/ui/BannerAdView$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/basead/ui/BannerAdView$2;->b:Lcom/anythink/core/common/res/image/RecycleImageView;

    iput-object p4, p0, Lcom/anythink/basead/ui/BannerAdView$2;->c:Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 226
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerAdView$2;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 216
    iget-object p1, p0, Lcom/anythink/basead/ui/BannerAdView$2;->b:Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/res/image/RecycleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    iget-object p1, p0, Lcom/anythink/basead/ui/BannerAdView$2;->d:Lcom/anythink/basead/ui/BannerAdView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 219
    iget-object p2, p0, Lcom/anythink/basead/ui/BannerAdView$2;->c:Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-virtual {p2, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    :cond_1c
    return-void
.end method
