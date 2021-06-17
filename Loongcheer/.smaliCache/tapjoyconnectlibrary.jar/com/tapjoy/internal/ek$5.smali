.class final Lcom/tapjoy/internal/ek$5;
.super Lcom/tapjoy/internal/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek<",
        "Lcom/tapjoy/internal/iw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V
    .registers 3

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .registers 2

    .line 381
    check-cast p1, Lcom/tapjoy/internal/iw;

    .line 3383
    invoke-virtual {p1}, Lcom/tapjoy/internal/iw;->c()I

    move-result p1

    .line 381
    return p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;
    .registers 4

    .line 381
    nop

    .line 1391
    nop

    .line 2258
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->g()J

    move-result-wide v0

    .line 2259
    iget-object p1, p1, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {p1, v0, v1}, Lcom/tapjoy/internal/iv;->b(J)Lcom/tapjoy/internal/iw;

    move-result-object p1

    .line 381
    return-object p1
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/em;Ljava/lang/Object;)V
    .registers 3

    .line 381
    check-cast p2, Lcom/tapjoy/internal/iw;

    .line 2387
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/em;->a(Lcom/tapjoy/internal/iw;)V

    .line 381
    return-void
.end method
