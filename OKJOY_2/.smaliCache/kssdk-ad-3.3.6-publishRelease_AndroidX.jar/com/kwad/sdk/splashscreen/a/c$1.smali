.class Lcom/kwad/sdk/splashscreen/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/splashscreen/a/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/splashscreen/a/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/splashscreen/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$1;->a:Lcom/kwad/sdk/splashscreen/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c$1;->a:Lcom/kwad/sdk/splashscreen/a/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c$1;->a:Lcom/kwad/sdk/splashscreen/a/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;->onAdShowEnd()V

    :cond_11
    return-void
.end method
