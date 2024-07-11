.class Lcom/kwad/sdk/splashscreen/a/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/splashscreen/a/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/response/model/AdInfo;

.field final synthetic b:Lcom/kwad/sdk/splashscreen/a/f;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/splashscreen/a/f;Lcom/kwad/sdk/core/response/model/AdInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->b:Lcom/kwad/sdk/splashscreen/a/f;

    iput-object p2, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->a:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->b:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {p1}, Lcom/kwad/sdk/splashscreen/a/f;->b(Lcom/kwad/sdk/splashscreen/a/f;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/kwad/sdk/splashscreen/a/f;->a(Lcom/kwad/sdk/splashscreen/a/f;Z)Z

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->b:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {p1}, Lcom/kwad/sdk/splashscreen/a/f;->b(Lcom/kwad/sdk/splashscreen/a/f;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->a:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->speakerIconUrl:Ljava/lang/String;

    goto :goto_20

    :cond_1a
    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->a:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->speakerMuteIconUrl:Ljava/lang/String;

    :goto_20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->b:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/a/f;->a(Lcom/kwad/sdk/splashscreen/a/f;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->b:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, p1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_4f

    :cond_36
    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->b:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {p1}, Lcom/kwad/sdk/splashscreen/a/f;->a(Lcom/kwad/sdk/splashscreen/a/f;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->b:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/a/f;->g(Lcom/kwad/sdk/splashscreen/a/f;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/kwad/sdk/R$drawable;->ksad_splash_sound_selector:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4f
    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->b:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {p1}, Lcom/kwad/sdk/splashscreen/a/f;->a(Lcom/kwad/sdk/splashscreen/a/f;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->b:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/a/f;->b(Lcom/kwad/sdk/splashscreen/a/f;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->b:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$3;->b:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/a/f;->b(Lcom/kwad/sdk/splashscreen/a/f;)Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/splashscreen/b/a;->a(ZZ)V

    return-void
.end method
