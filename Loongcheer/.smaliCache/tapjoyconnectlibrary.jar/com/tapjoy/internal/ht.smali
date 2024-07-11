.class public Lcom/tapjoy/internal/ht;
.super Lcom/tapjoy/internal/hs;
.source "SourceFile"


# static fields
.field public static final d:Lcom/tapjoy/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bd<",
            "Lcom/tapjoy/internal/ht;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tapjoy/internal/ic;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lcom/tapjoy/internal/ht$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ht$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ht;->d:Lcom/tapjoy/internal/bd;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/bi;)V
    .registers 7

    .line 19
    invoke-direct {p0}, Lcom/tapjoy/internal/hs;-><init>()V

    .line 15
    nop

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/tapjoy/internal/ht;->a:Ljava/util/ArrayList;

    .line 20
    nop

    .line 21
    nop

    .line 23
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 24
    :goto_12
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 25
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v2

    .line 26
    const-string v3, "layouts"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 27
    iget-object v2, p0, Lcom/tapjoy/internal/ht;->a:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/ic;->d:Lcom/tapjoy/internal/bd;

    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/bi;->a(Ljava/util/List;Lcom/tapjoy/internal/bd;)V

    goto :goto_12

    .line 29
    :cond_2c
    const-string v3, "meta"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 30
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->d()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ht;->b:Ljava/util/Map;

    goto :goto_12

    .line 32
    :cond_3b
    const-string v3, "max_show_time"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 33
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->p()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/tapjoy/internal/ht;->c:F

    goto :goto_12

    .line 35
    :cond_4b
    const-string v3, "ad_content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 36
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 37
    :cond_58
    const-string v3, "redirect_url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 38
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 41
    :cond_65
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    .line 43
    goto :goto_12

    .line 44
    :cond_69
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 46
    iget-object p1, p0, Lcom/tapjoy/internal/ht;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_a4

    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ic;

    .line 48
    iget-object v3, v2, Lcom/tapjoy/internal/ic;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_a3

    .line 49
    iget-object v2, v2, Lcom/tapjoy/internal/ic;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/ib;

    .line 50
    iget-object v4, v3, Lcom/tapjoy/internal/ib;->i:Ljava/lang/String;

    if-nez v4, :cond_9c

    .line 51
    iput-object v0, v3, Lcom/tapjoy/internal/ib;->i:Ljava/lang/String;

    .line 53
    :cond_9c
    iget-object v4, v3, Lcom/tapjoy/internal/ib;->h:Ljava/lang/String;

    if-nez v4, :cond_a2

    .line 54
    iput-object v1, v3, Lcom/tapjoy/internal/ib;->h:Ljava/lang/String;

    .line 56
    :cond_a2
    goto :goto_8a

    .line 58
    :cond_a3
    goto :goto_74

    .line 60
    :cond_a4
    return-void
.end method
