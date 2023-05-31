.class final Lcom/anythink/myoffer/e/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/myoffer/a/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/e/c/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/e/c/a;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/e/c/a;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/anythink/myoffer/e/c/a$1;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$1;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 69
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$1;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/c/b;->onAdLoaded()V

    .line 71
    :cond_11
    return-void
.end method

.method public final a(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$1;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 76
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a$1;->a:Lcom/anythink/myoffer/e/c/a;

    invoke-static {v0}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/myoffer/e/c/b;->onAdLoadFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 78
    :cond_11
    return-void
.end method
