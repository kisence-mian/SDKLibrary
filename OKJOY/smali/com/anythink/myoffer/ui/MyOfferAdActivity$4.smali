.class final Lcom/anythink/myoffer/ui/MyOfferAdActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/myoffer/ui/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j()V
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
    .line 348
    iput-object p1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$4;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 351
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "onClickEndCard: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$4;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->b(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/c;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$4;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->b(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/c;->c()I

    move-result v0

    if-nez v0, :cond_20

    .line 354
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$4;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    .line 356
    :cond_20
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 360
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "onCloseEndCard......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$4;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$4;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$4;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->finish()V

    .line 363
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$4;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->i(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/e/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 364
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$4;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->i(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/e/a/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/a/c$b;->e()V

    .line 366
    :cond_2c
    return-void
.end method
