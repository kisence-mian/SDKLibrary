.class final Lcom/tapjoy/internal/ek$10;
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

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/ek;-><init>(Lcom/tapjoy/internal/eh;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .registers 2

    .line 263
    const/4 p1, 0x4

    return p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/el;)Ljava/lang/Object;
    .registers 2

    .line 263
    nop

    .line 1273
    invoke-virtual {p1}, Lcom/tapjoy/internal/el;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 263
    return-object p1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/em;Ljava/lang/Object;)V
    .registers 3

    .line 263
    check-cast p2, Ljava/lang/Integer;

    .line 2269
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/em;->d(I)V

    .line 263
    return-void
.end method
