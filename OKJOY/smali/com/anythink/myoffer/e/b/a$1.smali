.class final Lcom/anythink/myoffer/e/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/myoffer/a/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/e/b/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/e/b/a;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/e/b/a;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/anythink/myoffer/e/b/a$1;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$1;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 66
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$1;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/b/b;->onAdLoaded()V

    .line 68
    :cond_11
    return-void
.end method

.method public final a(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$1;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 73
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a$1;->a:Lcom/anythink/myoffer/e/b/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/myoffer/e/b/b;->onAdLoadFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 75
    :cond_11
    return-void
.end method
