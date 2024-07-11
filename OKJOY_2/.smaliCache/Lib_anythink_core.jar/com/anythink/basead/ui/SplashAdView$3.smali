.class final Lcom/anythink/basead/ui/SplashAdView$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SplashAdView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/component/RoundImageView;

.field final synthetic b:Lcom/anythink/basead/ui/SplashAdView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/SplashAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V
    .registers 3

    .line 131
    iput-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$3;->b:Lcom/anythink/basead/ui/SplashAdView;

    iput-object p2, p0, Lcom/anythink/basead/ui/SplashAdView$3;->a:Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 155
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 134
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$3;->b:Lcom/anythink/basead/ui/SplashAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 135
    iget-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$3;->b:Lcom/anythink/basead/ui/SplashAdView;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/anythink/basead/ui/SplashAdView;->u:I

    .line 136
    iget-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$3;->b:Lcom/anythink/basead/ui/SplashAdView;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/anythink/basead/ui/SplashAdView;->v:I

    .line 138
    iget-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$3;->b:Lcom/anythink/basead/ui/SplashAdView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_splash_root"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 140
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/basead/ui/SplashAdView$3;->b:Lcom/anythink/basead/ui/SplashAdView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 141
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 142
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$3;->b:Lcom/anythink/basead/ui/SplashAdView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 148
    iget-object p2, p0, Lcom/anythink/basead/ui/SplashAdView$3;->a:Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-virtual {p2, p1}, Lcom/anythink/basead/ui/component/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    :cond_5e
    return-void
.end method
