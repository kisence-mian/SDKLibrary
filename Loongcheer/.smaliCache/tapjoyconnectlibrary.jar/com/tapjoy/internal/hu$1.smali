.class final Lcom/tapjoy/internal/hu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/bd<",
        "Lcom/tapjoy/internal/hu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;
    .registers 13

    .line 34
    nop

    .line 1037
    nop

    .line 1038
    nop

    .line 1039
    nop

    .line 1040
    nop

    .line 1041
    nop

    .line 1042
    nop

    .line 1043
    nop

    .line 1045
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    move-object v4, v0

    move-object v5, v4

    move-object v8, v5

    move-object v9, v8

    move-object v10, v9

    move-object v7, v2

    const/4 v6, 0x0

    .line 1047
    :goto_16
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1048
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v0

    .line 1049
    const-string v1, "region"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1050
    sget-object v0, Lcom/tapjoy/internal/be;->b:Lcom/tapjoy/internal/bd;

    .line 1213
    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v0

    .line 1050
    move-object v4, v0

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_16

    .line 1051
    :cond_32
    const-string v1, "value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1052
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v5

    goto :goto_16

    .line 1053
    :cond_3f
    const-string v1, "dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1054
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->n()Z

    move-result v6

    goto :goto_16

    .line 1055
    :cond_4c
    const-string v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1056
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v7

    goto :goto_16

    .line 1057
    :cond_59
    const-string v1, "redirect_url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1058
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->b()Ljava/lang/String;

    move-result-object v8

    goto :goto_16

    .line 1059
    :cond_66
    const-string v1, "ad_content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1060
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->b()Ljava/lang/String;

    move-result-object v9

    goto :goto_16

    .line 1061
    :cond_73
    invoke-static {v0}, Lcom/tapjoy/internal/hq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1062
    invoke-static {v0, p1}, Lcom/tapjoy/internal/hq;->a(Ljava/lang/String;Lcom/tapjoy/internal/bi;)Lcom/tapjoy/internal/hq;

    move-result-object v10

    goto :goto_16

    .line 1064
    :cond_7e
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    goto :goto_16

    .line 1067
    :cond_82
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 1069
    new-instance p1, Lcom/tapjoy/internal/hu;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/tapjoy/internal/hu;-><init>(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gn;)V

    .line 34
    return-object p1
.end method
