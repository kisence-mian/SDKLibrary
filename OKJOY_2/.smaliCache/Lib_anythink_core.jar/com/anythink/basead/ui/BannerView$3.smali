.class final Lcom/anythink/basead/ui/BannerView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BannerView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/BannerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BannerView;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/anythink/basead/ui/BannerView$3;->a:Lcom/anythink/basead/ui/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 161
    iget-object p1, p0, Lcom/anythink/basead/ui/BannerView$3;->a:Lcom/anythink/basead/ui/BannerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/BannerView;->c(Lcom/anythink/basead/ui/BannerView;)Lcom/anythink/basead/ui/BannerView$a;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 162
    iget-object p1, p0, Lcom/anythink/basead/ui/BannerView$3;->a:Lcom/anythink/basead/ui/BannerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/BannerView;->c(Lcom/anythink/basead/ui/BannerView;)Lcom/anythink/basead/ui/BannerView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/ui/BannerView$a;->a()V

    .line 164
    :cond_11
    return-void
.end method
