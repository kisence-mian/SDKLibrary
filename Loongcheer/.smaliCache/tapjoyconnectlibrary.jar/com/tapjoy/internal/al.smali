.class public abstract Lcom/tapjoy/internal/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ai;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/ai<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/tapjoy/internal/aj<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/internal/al;->a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/aj;

    move-result-object p1

    .line 14
    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/tapjoy/internal/aj;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/internal/al;->a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/aj;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tapjoy/internal/aj;->a(Ljava/lang/Object;)V

    .line 31
    return-void
.end method
