.class final Lcom/anythink/myoffer/a/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/a/a/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/a/a/d;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/a/a/d;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/anythink/myoffer/a/a/d$1;->a:Lcom/anythink/myoffer/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d$1;->a:Lcom/anythink/myoffer/a/a/d;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/d;->a(Lcom/anythink/myoffer/a/a/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_19

    .line 162
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/d$1;->a:Lcom/anythink/myoffer/a/a/d;

    const-string v1, "20001"

    const-string v2, "Load timeout!"

    invoke-static {v1, v2}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/myoffer/a/a/d;->a(Lcom/anythink/myoffer/a/a/d;Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 164
    :cond_19
    return-void
.end method
