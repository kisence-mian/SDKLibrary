.class final Lcom/tapjoy/internal/ia$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/bd<",
        "Lcom/tapjoy/internal/ia;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;
    .registers 8

    .line 44
    nop

    .line 1047
    nop

    .line 1048
    nop

    .line 1049
    nop

    .line 1050
    nop

    .line 1052
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v1, v0

    move-object v2, v1

    const/4 v3, 0x1

    .line 1054
    :goto_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1055
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v4

    .line 1056
    const-string v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1057
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 1058
    :cond_24
    const-string v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1059
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 1060
    :cond_31
    const-string v5, "quantity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1061
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->r()I

    move-result v3

    goto :goto_d

    .line 1062
    :cond_3e
    const-string v5, "token"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1063
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 1065
    :cond_4b
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    goto :goto_d

    .line 1068
    :cond_4f
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 1070
    new-instance p1, Lcom/tapjoy/internal/ia;

    invoke-direct {p1, v0, v1, v3, v2}, Lcom/tapjoy/internal/ia;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    return-object p1
.end method
