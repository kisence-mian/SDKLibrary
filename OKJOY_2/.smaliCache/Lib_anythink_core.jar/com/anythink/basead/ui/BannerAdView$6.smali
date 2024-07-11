.class final Lcom/anythink/basead/ui/BannerAdView$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BannerAdView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/component/RoundImageView;

.field final synthetic b:Lcom/anythink/basead/ui/BannerAdView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BannerAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V
    .registers 3

    .line 338
    iput-object p1, p0, Lcom/anythink/basead/ui/BannerAdView$6;->b:Lcom/anythink/basead/ui/BannerAdView;

    iput-object p2, p0, Lcom/anythink/basead/ui/BannerAdView$6;->a:Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 349
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/anythink/basead/ui/BannerAdView$6;->b:Lcom/anythink/basead/ui/BannerAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BannerAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 342
    iget-object p1, p0, Lcom/anythink/basead/ui/BannerAdView$6;->a:Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/component/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 344
    :cond_13
    return-void
.end method
