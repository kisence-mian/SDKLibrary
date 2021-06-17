.class final Lcom/tapjoy/internal/ek$3;
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
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V
    .registers 3

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .registers 2

    .line 353
    const/16 p1, 0x8

    return p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;
    .registers 4

    .line 353
    nop

    .line 1363
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 353
    return-object p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/em;Ljava/lang/Object;)V
    .registers 5

    .line 353
    check-cast p2, Ljava/lang/Double;

    .line 2359
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/em;->d(J)V

    .line 353
    return-void
.end method
