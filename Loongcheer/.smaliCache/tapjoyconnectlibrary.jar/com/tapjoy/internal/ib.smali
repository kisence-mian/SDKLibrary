.class public final Lcom/tapjoy/internal/ib;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Lcom/tapjoy/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bd<",
            "Lcom/tapjoy/internal/ib;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/tapjoy/internal/id;

.field public b:Lcom/tapjoy/internal/id;

.field public c:Lcom/tapjoy/internal/id;

.field public d:Lcom/tapjoy/internal/id;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Lcom/tapjoy/internal/hz;

.field public m:Lcom/tapjoy/internal/hz;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Lcom/tapjoy/internal/ib$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ib$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ib;->n:Lcom/tapjoy/internal/bd;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/bi;)V
    .registers 6

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x9

    iput v0, p0, Lcom/tapjoy/internal/ib;->e:I

    .line 19
    const/16 v1, 0xa

    iput v1, p0, Lcom/tapjoy/internal/ib;->f:I

    .line 24
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tapjoy/internal/ib;->j:Z

    .line 31
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    .line 32
    :goto_11
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v2

    if-eqz v2, :cond_154

    .line 33
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v2

    .line 34
    const-string v3, "x"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 35
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/id;->a(Ljava/lang/String;)Lcom/tapjoy/internal/id;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ib;->a:Lcom/tapjoy/internal/id;

    goto :goto_11

    .line 37
    :cond_2e
    const-string v3, "y"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 38
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/id;->a(Ljava/lang/String;)Lcom/tapjoy/internal/id;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ib;->b:Lcom/tapjoy/internal/id;

    goto :goto_11

    .line 40
    :cond_41
    const-string v3, "width"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 41
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/id;->a(Ljava/lang/String;)Lcom/tapjoy/internal/id;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ib;->c:Lcom/tapjoy/internal/id;

    goto :goto_11

    .line 43
    :cond_54
    const-string v3, "height"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 44
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/id;->a(Ljava/lang/String;)Lcom/tapjoy/internal/id;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ib;->d:Lcom/tapjoy/internal/id;

    goto :goto_11

    .line 46
    :cond_67
    const-string v3, "url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 47
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ib;->g:Ljava/lang/String;

    goto :goto_11

    .line 49
    :cond_76
    const-string v3, "redirect_url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 50
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ib;->h:Ljava/lang/String;

    goto :goto_11

    .line 52
    :cond_85
    const-string v3, "ad_content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 53
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ib;->i:Ljava/lang/String;

    goto/16 :goto_11

    .line 55
    :cond_95
    const-string v3, "dismiss"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 56
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->n()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tapjoy/internal/ib;->j:Z

    goto/16 :goto_11

    .line 58
    :cond_a5
    const-string v3, "value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 59
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/ib;->k:Ljava/lang/String;

    goto/16 :goto_11

    .line 61
    :cond_b5
    const-string v3, "image"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 62
    sget-object v2, Lcom/tapjoy/internal/hz;->e:Lcom/tapjoy/internal/bd;

    .line 1213
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    check-cast v2, Lcom/tapjoy/internal/hz;

    iput-object v2, p0, Lcom/tapjoy/internal/ib;->l:Lcom/tapjoy/internal/hz;

    goto/16 :goto_11

    .line 64
    :cond_c9
    const-string v3, "image_clicked"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 65
    sget-object v2, Lcom/tapjoy/internal/hz;->e:Lcom/tapjoy/internal/bd;

    .line 2213
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v2

    .line 65
    check-cast v2, Lcom/tapjoy/internal/hz;

    iput-object v2, p0, Lcom/tapjoy/internal/ib;->m:Lcom/tapjoy/internal/hz;

    goto/16 :goto_11

    .line 67
    :cond_dd
    const-string v3, "align"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 68
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v2

    .line 69
    const-string v3, "left"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 70
    iput v0, p0, Lcom/tapjoy/internal/ib;->e:I

    goto/16 :goto_11

    .line 72
    :cond_f5
    const-string v3, "right"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 73
    const/16 v2, 0xb

    iput v2, p0, Lcom/tapjoy/internal/ib;->e:I

    goto/16 :goto_11

    .line 75
    :cond_103
    const-string v3, "center"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 76
    const/16 v2, 0xe

    iput v2, p0, Lcom/tapjoy/internal/ib;->e:I

    goto/16 :goto_11

    .line 79
    :cond_111
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    .line 81
    goto/16 :goto_11

    .line 82
    :cond_116
    const-string v3, "valign"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14f

    .line 83
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v3, "top"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 85
    iput v1, p0, Lcom/tapjoy/internal/ib;->f:I

    goto/16 :goto_11

    .line 87
    :cond_12e
    const-string v3, "middle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 88
    const/16 v2, 0xf

    iput v2, p0, Lcom/tapjoy/internal/ib;->f:I

    goto/16 :goto_11

    .line 90
    :cond_13c
    const-string v3, "bottom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14a

    .line 91
    const/16 v2, 0xc

    iput v2, p0, Lcom/tapjoy/internal/ib;->f:I

    goto/16 :goto_11

    .line 94
    :cond_14a
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    .line 96
    goto/16 :goto_11

    .line 98
    :cond_14f
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    .line 100
    goto/16 :goto_11

    .line 101
    :cond_154
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 102
    return-void
.end method
