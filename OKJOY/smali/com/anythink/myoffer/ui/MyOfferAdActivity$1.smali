.class final Lcom/anythink/myoffer/ui/MyOfferAdActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/myoffer/ui/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/MyOfferAdActivity;->e()V
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
    .line 203
    iput-object p1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$1;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$1;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    .line 207
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$1;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->b(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/c;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$1;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->b(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/c;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    .line 212
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$1;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    .line 214
    :cond_1a
    return-void
.end method
