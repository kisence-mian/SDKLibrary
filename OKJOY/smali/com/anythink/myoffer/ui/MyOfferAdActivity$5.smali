.class final Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/myoffer/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/MyOfferAdActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V
    .registers 2

    .prologue
    .line 404
    iput-object p1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Lcom/anythink/myoffer/ui/MyOfferAdActivity;Z)Z

    .line 408
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->l(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    .line 409
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 425
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    new-instance v1, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$2;-><init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Lcom/anythink/myoffer/ui/MyOfferAdActivity;Z)Z

    .line 414
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    new-instance v1, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$1;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5$1;-><init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 420
    return-void
.end method
