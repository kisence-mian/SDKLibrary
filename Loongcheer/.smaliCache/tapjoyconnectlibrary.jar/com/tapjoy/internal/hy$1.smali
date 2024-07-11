.class final Lcom/tapjoy/internal/hy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/hy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/bd<",
        "Lcom/tapjoy/internal/hy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;
    .registers 7

    .line 30
    nop

    .line 1033
    nop

    .line 1034
    nop

    .line 1036
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    const-string v0, ""

    move-object v1, v0

    move-object v2, v1

    .line 1038
    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1039
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v3

    .line 1040
    const-string v4, "campaign_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1041
    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 1042
    :cond_21
    const-string v4, "product_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1043
    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bi;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 1045
    :cond_2e
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    goto :goto_a

    .line 1048
    :cond_32
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 1050
    new-instance p1, Lcom/tapjoy/internal/hy;

    invoke-direct {p1, v1, v2}, Lcom/tapjoy/internal/hy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-object p1
.end method
