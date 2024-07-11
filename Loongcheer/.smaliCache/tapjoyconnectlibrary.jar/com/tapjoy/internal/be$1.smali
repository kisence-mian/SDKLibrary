.class final Lcom/tapjoy/internal/be$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/bd<",
        "Landroid/graphics/Point;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;
    .registers 5

    .line 12
    nop

    .line 1015
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1016
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    .line 1017
    :goto_9
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1018
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v1

    .line 1019
    const-string v2, "x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1020
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_9

    .line 1021
    :cond_22
    const-string v2, "y"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1022
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_9

    .line 1024
    :cond_31
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    .line 1026
    goto :goto_9

    .line 1027
    :cond_35
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 1028
    nop

    .line 12
    return-object v0
.end method
