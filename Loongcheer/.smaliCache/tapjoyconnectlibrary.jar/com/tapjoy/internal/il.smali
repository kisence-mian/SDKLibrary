.class public final Lcom/tapjoy/internal/il;
.super Lcom/tapjoy/internal/ik;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/il$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ik<",
        "Lcom/tapjoy/internal/il$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public d:Z

.field private final e:Lcom/tapjoy/internal/hb;

.field private final f:Lcom/tapjoy/internal/fb;

.field private final g:Lcom/tapjoy/internal/ev;

.field private final h:Lcom/tapjoy/internal/fi;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/hb;Lcom/tapjoy/internal/fb;Lcom/tapjoy/internal/ev;Lcom/tapjoy/internal/fi;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    .line 43
    invoke-direct {p0}, Lcom/tapjoy/internal/ik;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/tapjoy/internal/il;->e:Lcom/tapjoy/internal/hb;

    .line 45
    iput-object p2, p0, Lcom/tapjoy/internal/il;->f:Lcom/tapjoy/internal/fb;

    .line 46
    iput-object p3, p0, Lcom/tapjoy/internal/il;->g:Lcom/tapjoy/internal/ev;

    .line 47
    iput-object p4, p0, Lcom/tapjoy/internal/il;->h:Lcom/tapjoy/internal/fi;

    .line 48
    iput-object p5, p0, Lcom/tapjoy/internal/il;->c:Ljava/lang/String;

    .line 49
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/internal/il;->d:Z

    .line 50
    iput-object p6, p0, Lcom/tapjoy/internal/il;->i:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;
    .registers 8

    .line 26
    nop

    .line 1083
    nop

    .line 1084
    nop

    .line 1085
    nop

    .line 1086
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 1087
    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1088
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v3

    .line 1089
    const-string v4, "interstitial"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1090
    sget-object v0, Lcom/tapjoy/internal/hw;->n:Lcom/tapjoy/internal/bd;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bi;->a(Lcom/tapjoy/internal/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/hw;

    goto :goto_a

    .line 1091
    :cond_25
    const-string v4, "contextual_button"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1092
    sget-object v1, Lcom/tapjoy/internal/ht;->d:Lcom/tapjoy/internal/bd;

    invoke-virtual {p1, v1}, Lcom/tapjoy/internal/bi;->a(Lcom/tapjoy/internal/bd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/ht;

    goto :goto_a

    .line 1093
    :cond_36
    const-string v4, "enabled_placements"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1094
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->c()Ljava/util/List;

    move-result-object v2

    goto :goto_a

    .line 1096
    :cond_43
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    .line 1098
    goto :goto_a

    .line 1099
    :cond_47
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 1100
    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/tapjoy/internal/hw;->a()Z

    move-result p1

    if-nez p1, :cond_58

    invoke-virtual {v0}, Lcom/tapjoy/internal/hw;->b()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 1101
    :cond_58
    new-instance p1, Lcom/tapjoy/internal/il$a;

    new-instance v1, Lcom/tapjoy/internal/hg;

    iget-object v3, p0, Lcom/tapjoy/internal/il;->e:Lcom/tapjoy/internal/hb;

    iget-object v4, p0, Lcom/tapjoy/internal/il;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/internal/il;->i:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/tapjoy/internal/hg;-><init>(Lcom/tapjoy/internal/hb;Ljava/lang/String;Lcom/tapjoy/internal/hw;Landroid/content/Context;)V

    invoke-direct {p1, v1, v2}, Lcom/tapjoy/internal/il$a;-><init>(Lcom/tapjoy/internal/hi;Ljava/util/List;)V

    return-object p1

    .line 1103
    :cond_69
    if-eqz v1, :cond_7c

    .line 1104
    new-instance p1, Lcom/tapjoy/internal/il$a;

    new-instance v0, Lcom/tapjoy/internal/gx;

    iget-object v3, p0, Lcom/tapjoy/internal/il;->e:Lcom/tapjoy/internal/hb;

    iget-object v4, p0, Lcom/tapjoy/internal/il;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/internal/il;->i:Landroid/content/Context;

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/tapjoy/internal/gx;-><init>(Lcom/tapjoy/internal/hb;Ljava/lang/String;Lcom/tapjoy/internal/ht;Landroid/content/Context;)V

    invoke-direct {p1, v0, v2}, Lcom/tapjoy/internal/il$a;-><init>(Lcom/tapjoy/internal/hi;Ljava/util/List;)V

    return-object p1

    .line 1106
    :cond_7c
    new-instance p1, Lcom/tapjoy/internal/il$a;

    new-instance v0, Lcom/tapjoy/internal/hh;

    invoke-direct {v0}, Lcom/tapjoy/internal/hh;-><init>()V

    invoke-direct {p1, v0, v2}, Lcom/tapjoy/internal/il$a;-><init>(Lcom/tapjoy/internal/hi;Ljava/util/List;)V

    .line 26
    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 55
    const-string v0, "placement"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-super {p0}, Lcom/tapjoy/internal/ik;->e()Ljava/util/Map;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/tapjoy/internal/bh;

    iget-object v2, p0, Lcom/tapjoy/internal/il;->f:Lcom/tapjoy/internal/fb;

    invoke-static {v2}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/fb;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    const-string v2, "info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Lcom/tapjoy/internal/bh;

    iget-object v2, p0, Lcom/tapjoy/internal/il;->g:Lcom/tapjoy/internal/ev;

    invoke-static {v2}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/ev;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    const-string v2, "app"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Lcom/tapjoy/internal/bh;

    iget-object v2, p0, Lcom/tapjoy/internal/il;->h:Lcom/tapjoy/internal/fi;

    invoke-static {v2}, Lcom/tapjoy/internal/hr;->a(Lcom/tapjoy/internal/fi;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/bh;-><init>(Ljava/lang/String;)V

    const-string v2, "user"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/tapjoy/internal/il;->c:Ljava/lang/String;

    const-string v2, "placement"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object v0
.end method

.method public final synthetic f()Ljava/lang/Object;
    .registers 5

    .line 26
    nop

    .line 2070
    invoke-super {p0}, Lcom/tapjoy/internal/ik;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/il$a;

    .line 2071
    iget-object v1, v0, Lcom/tapjoy/internal/il$a;->a:Lcom/tapjoy/internal/hi;

    instance-of v1, v1, Lcom/tapjoy/internal/hh;

    if-nez v1, :cond_29

    .line 2072
    iget-object v1, v0, Lcom/tapjoy/internal/il$a;->a:Lcom/tapjoy/internal/hi;

    invoke-virtual {v1}, Lcom/tapjoy/internal/hi;->b()V

    .line 2073
    iget-object v1, v0, Lcom/tapjoy/internal/il$a;->a:Lcom/tapjoy/internal/hi;

    invoke-virtual {v1}, Lcom/tapjoy/internal/hi;->c()Z

    move-result v1

    if-nez v1, :cond_29

    .line 2074
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapjoy/internal/il;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2075
    new-instance v1, Lcom/tapjoy/internal/hh;

    invoke-direct {v1}, Lcom/tapjoy/internal/hh;-><init>()V

    iput-object v1, v0, Lcom/tapjoy/internal/il$a;->a:Lcom/tapjoy/internal/hi;

    .line 2078
    :cond_29
    nop

    .line 26
    return-object v0
.end method
