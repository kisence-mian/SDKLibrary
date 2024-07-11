.class Lcom/kwad/sdk/splashscreen/a/f$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/splashscreen/a/f$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/splashscreen/a/f$1;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/splashscreen/a/f$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$1$1;->a:Lcom/kwad/sdk/splashscreen/a/f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$1$1;->a:Lcom/kwad/sdk/splashscreen/a/f$1;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f$1;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$1$1;->a:Lcom/kwad/sdk/splashscreen/a/f$1;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f$1;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f$1$1;->a:Lcom/kwad/sdk/splashscreen/a/f$1;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/a/f$1;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v2}, Lcom/kwad/sdk/splashscreen/a/f;->b(Lcom/kwad/sdk/splashscreen/a/f;)Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/kwad/sdk/splashscreen/b/a;->a(ZZ)V

    :cond_1e
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$1$1;->a:Lcom/kwad/sdk/splashscreen/a/f$1;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f$1;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$1$1;->a:Lcom/kwad/sdk/splashscreen/a/f$1;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f$1;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f$1$1;->a:Lcom/kwad/sdk/splashscreen/a/f$1;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/a/f$1;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v2}, Lcom/kwad/sdk/splashscreen/a/f;->b(Lcom/kwad/sdk/splashscreen/a/f;)Z

    move-result v2

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    if-eqz v2, :cond_41

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->speakerIconUrl:Ljava/lang/String;

    goto :goto_43

    :cond_41
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->speakerMuteIconUrl:Ljava/lang/String;

    :goto_43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f$1$1;->a:Lcom/kwad/sdk/splashscreen/a/f$1;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/a/f$1;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v2}, Lcom/kwad/sdk/splashscreen/a/f;->a(Lcom/kwad/sdk/splashscreen/a/f;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/splashscreen/a/f$1$1;->a:Lcom/kwad/sdk/splashscreen/a/f$1;

    iget-object v3, v3, Lcom/kwad/sdk/splashscreen/a/f$1;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v3, v3, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v3, v3, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v2, v0, v3}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_7a

    :cond_5d
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$1$1;->a:Lcom/kwad/sdk/splashscreen/a/f$1;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f$1;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/a/f;->a(Lcom/kwad/sdk/splashscreen/a/f;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f$1$1;->a:Lcom/kwad/sdk/splashscreen/a/f$1;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/a/f$1;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v2}, Lcom/kwad/sdk/splashscreen/a/f;->c(Lcom/kwad/sdk/splashscreen/a/f;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/kwad/sdk/R$drawable;->ksad_splash_sound_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7a
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$1$1;->a:Lcom/kwad/sdk/splashscreen/a/f$1;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f$1;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/a/f;->a(Lcom/kwad/sdk/splashscreen/a/f;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_85
    return-void
.end method
