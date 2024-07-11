.class final Lcom/tapjoy/internal/ek$7;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V
    .registers 3

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .registers 2

    .line 221
    check-cast p1, Ljava/lang/Integer;

    .line 3223
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4099
    if-ltz p1, :cond_d

    .line 4100
    invoke-static {p1}, Lcom/tapjoy/internal/em;->a(I)I

    move-result p1

    return p1

    .line 4103
    :cond_d
    const/16 p1, 0xa

    .line 221
    return p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;
    .registers 2

    .line 221
    nop

    .line 1231
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 221
    return-object p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/em;Ljava/lang/Object;)V
    .registers 5

    .line 221
    check-cast p2, Ljava/lang/Integer;

    .line 2227
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3208
    if-ltz p2, :cond_c

    .line 3209
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/em;->c(I)V

    return-void

    .line 3212
    :cond_c
    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/em;->c(J)V

    .line 221
    return-void
.end method
