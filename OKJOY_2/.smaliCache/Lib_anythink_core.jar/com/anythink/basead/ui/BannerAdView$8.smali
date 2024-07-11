.class final Lcom/anythink/basead/ui/BannerAdView$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BannerAdView;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/BannerAdView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BannerAdView;)V
    .registers 2

    .line 407
    iput-object p1, p0, Lcom/anythink/basead/ui/BannerAdView$8;->a:Lcom/anythink/basead/ui/BannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 410
    iget-object p1, p0, Lcom/anythink/basead/ui/BannerAdView$8;->a:Lcom/anythink/basead/ui/BannerAdView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BannerAdView;->a:Lcom/anythink/basead/f/a;

    if-eqz p1, :cond_d

    .line 411
    iget-object p1, p0, Lcom/anythink/basead/ui/BannerAdView$8;->a:Lcom/anythink/basead/ui/BannerAdView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BannerAdView;->a:Lcom/anythink/basead/f/a;

    invoke-interface {p1}, Lcom/anythink/basead/f/a;->onAdClosed()V

    .line 413
    :cond_d
    return-void
.end method
