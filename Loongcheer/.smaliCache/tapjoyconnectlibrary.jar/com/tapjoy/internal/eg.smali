.class public abstract Lcom/tapjoy/internal/eg;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/tapjoy/internal/en;",
        ">",
        "Lcom/tapjoy/internal/ek<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/tapjoy/internal/eh;->a:Lcom/tapjoy/internal/eh;

    invoke-direct {p0, v0, p1}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .registers 2

    .line 23
    check-cast p1, Lcom/tapjoy/internal/en;

    .line 3029
    invoke-interface {p1}, Lcom/tapjoy/internal/en;->a()I

    move-result p1

    invoke-static {p1}, Lcom/tapjoy/internal/em;->a(I)I

    move-result p1

    .line 23
    return p1
.end method

.method protected abstract a(I)Lcom/tapjoy/internal/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final synthetic a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;
    .registers 4

    .line 23
    nop

    .line 1037
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->c()I

    move-result p1

    .line 1038
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/eg;->a(I)Lcom/tapjoy/internal/en;

    move-result-object v0

    .line 1039
    if-eqz v0, :cond_d

    .line 1042
    nop

    .line 23
    return-object v0

    .line 1040
    :cond_d
    new-instance v0, Lcom/tapjoy/internal/ek$a;

    iget-object v1, p0, Lcom/tapjoy/internal/eg;->a:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/ek$a;-><init>(ILjava/lang/Class;)V

    throw v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/em;Ljava/lang/Object;)V
    .registers 3

    .line 23
    check-cast p2, Lcom/tapjoy/internal/en;

    .line 2033
    invoke-interface {p2}, Lcom/tapjoy/internal/en;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/em;->c(I)V

    .line 23
    return-void
.end method
