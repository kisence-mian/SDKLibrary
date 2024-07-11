.class public Lcom/tapjoy/internal/hw;
.super Lcom/tapjoy/internal/hs;
.source "SourceFile"


# static fields
.field public static final n:Lcom/tapjoy/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bd<",
            "Lcom/tapjoy/internal/hw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/tapjoy/internal/hz;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public b:Lcom/tapjoy/internal/hz;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public c:Lcom/tapjoy/internal/hz;

.field public d:Landroid/graphics/Point;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public e:Lcom/tapjoy/internal/hz;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public f:Lcom/tapjoy/internal/hz;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:Lcom/tapjoy/internal/gn;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tapjoy/internal/hu;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tapjoy/internal/hu;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public l:J

.field public m:Lcom/tapjoy/internal/hx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 187
    new-instance v0, Lcom/tapjoy/internal/hw$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/hw$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/hw;->n:Lcom/tapjoy/internal/bd;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/tapjoy/internal/hs;-><init>()V

    .line 40
    nop

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/tapjoy/internal/hw;->i:Ljava/util/ArrayList;

    .line 41
    nop

    .line 2074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/tapjoy/internal/hw;->j:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/bi;)V
    .registers 10

    .line 54
    invoke-direct {p0}, Lcom/tapjoy/internal/hs;-><init>()V

    .line 40
    nop

    .line 3074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/tapjoy/internal/hw;->i:Ljava/util/ArrayList;

    .line 41
    nop

    .line 4074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/tapjoy/internal/hw;->j:Ljava/util/ArrayList;

    .line 55
    nop

    .line 56
    nop

    .line 58
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 59
    :goto_1a
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v2

    if-eqz v2, :cond_187

    .line 60
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v3, "frame"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "landscape"

    const-string v5, "portrait"

    if-eqz v3, :cond_8d

    .line 62
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    .line 63
    :goto_33
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 64
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 66
    sget-object v2, Lcom/tapjoy/internal/hz;->e:Lcom/tapjoy/internal/bd;

    .line 4213
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v2

    .line 66
    check-cast v2, Lcom/tapjoy/internal/hz;

    iput-object v2, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hz;

    goto :goto_33

    .line 67
    :cond_4e
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 68
    sget-object v2, Lcom/tapjoy/internal/hz;->e:Lcom/tapjoy/internal/bd;

    .line 5213
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    check-cast v2, Lcom/tapjoy/internal/hz;

    iput-object v2, p0, Lcom/tapjoy/internal/hw;->b:Lcom/tapjoy/internal/hz;

    goto :goto_33

    .line 69
    :cond_5f
    const-string v3, "close_button"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 70
    sget-object v2, Lcom/tapjoy/internal/hz;->e:Lcom/tapjoy/internal/bd;

    .line 6213
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    check-cast v2, Lcom/tapjoy/internal/hz;

    iput-object v2, p0, Lcom/tapjoy/internal/hw;->c:Lcom/tapjoy/internal/hz;

    goto :goto_33

    .line 71
    :cond_72
    const-string v3, "close_button_offset"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 72
    sget-object v2, Lcom/tapjoy/internal/be;->a:Lcom/tapjoy/internal/bd;

    .line 7213
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    check-cast v2, Landroid/graphics/Point;

    iput-object v2, p0, Lcom/tapjoy/internal/hw;->d:Landroid/graphics/Point;

    goto :goto_33

    .line 74
    :cond_85
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    goto :goto_33

    .line 77
    :cond_89
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    goto :goto_1a

    .line 78
    :cond_8d
    const-string v3, "creative"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 79
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    .line 80
    :goto_98
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 81
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 83
    sget-object v2, Lcom/tapjoy/internal/hz;->e:Lcom/tapjoy/internal/bd;

    .line 8213
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v2

    .line 83
    check-cast v2, Lcom/tapjoy/internal/hz;

    iput-object v2, p0, Lcom/tapjoy/internal/hw;->e:Lcom/tapjoy/internal/hz;

    goto :goto_98

    .line 84
    :cond_b3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 85
    sget-object v2, Lcom/tapjoy/internal/hz;->e:Lcom/tapjoy/internal/bd;

    .line 9213
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v2

    .line 85
    check-cast v2, Lcom/tapjoy/internal/hz;

    iput-object v2, p0, Lcom/tapjoy/internal/hw;->f:Lcom/tapjoy/internal/hz;

    goto :goto_98

    .line 87
    :cond_c4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    goto :goto_98

    .line 90
    :cond_c8
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    goto/16 :goto_1a

    .line 91
    :cond_cd
    const-string v3, "url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 92
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/hw;->g:Ljava/lang/String;

    goto/16 :goto_1a

    .line 93
    :cond_dd
    invoke-static {v2}, Lcom/tapjoy/internal/hq;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 94
    invoke-static {v2, p1}, Lcom/tapjoy/internal/hq;->a(Ljava/lang/String;Lcom/tapjoy/internal/bi;)Lcom/tapjoy/internal/hq;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/hw;->h:Lcom/tapjoy/internal/gn;

    goto/16 :goto_1a

    .line 95
    :cond_eb
    const-string v3, "mappings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 96
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    .line 97
    :goto_f6
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 98
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 100
    iget-object v2, p0, Lcom/tapjoy/internal/hw;->i:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/hu;->h:Lcom/tapjoy/internal/bd;

    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/bi;->a(Ljava/util/List;Lcom/tapjoy/internal/bd;)V

    goto :goto_f6

    .line 101
    :cond_10e
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 102
    iget-object v2, p0, Lcom/tapjoy/internal/hw;->j:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/hu;->h:Lcom/tapjoy/internal/bd;

    invoke-virtual {p1, v2, v3}, Lcom/tapjoy/internal/bi;->a(Ljava/util/List;Lcom/tapjoy/internal/bd;)V

    goto :goto_f6

    .line 104
    :cond_11c
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    goto :goto_f6

    .line 107
    :cond_120
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    goto/16 :goto_1a

    .line 108
    :cond_125
    const-string v3, "meta"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_135

    .line 109
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->d()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/hw;->k:Ljava/util/Map;

    goto/16 :goto_1a

    .line 110
    :cond_135
    const-string v3, "ttl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_152

    .line 111
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->p()D

    move-result-wide v2

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v6

    double-to-long v2, v2

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/hw;->l:J

    .line 113
    goto/16 :goto_1a

    :cond_152
    const-string v3, "no_more_today"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_166

    .line 114
    sget-object v2, Lcom/tapjoy/internal/hx;->d:Lcom/tapjoy/internal/bd;

    .line 10213
    invoke-interface {v2, p1}, Lcom/tapjoy/internal/bd;->a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;

    move-result-object v2

    .line 114
    check-cast v2, Lcom/tapjoy/internal/hx;

    iput-object v2, p0, Lcom/tapjoy/internal/hw;->m:Lcom/tapjoy/internal/hx;

    goto/16 :goto_1a

    .line 115
    :cond_166
    const-string v3, "ad_content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_174

    .line 116
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a

    .line 117
    :cond_174
    const-string v3, "redirect_url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 118
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->b()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1a

    .line 120
    :cond_182
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    .line 122
    goto/16 :goto_1a

    .line 123
    :cond_187
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 125
    iget-object p1, p0, Lcom/tapjoy/internal/hw;->g:Ljava/lang/String;

    if-nez p1, :cond_192

    .line 126
    const-string p1, ""

    iput-object p1, p0, Lcom/tapjoy/internal/hw;->g:Ljava/lang/String;

    .line 129
    :cond_192
    iget-object p1, p0, Lcom/tapjoy/internal/hw;->i:Ljava/util/ArrayList;

    if-eqz p1, :cond_1b3

    .line 130
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/hu;

    .line 131
    iget-object v3, v2, Lcom/tapjoy/internal/hu;->f:Ljava/lang/String;

    if-nez v3, :cond_1ac

    .line 132
    iput-object v0, v2, Lcom/tapjoy/internal/hu;->f:Ljava/lang/String;

    .line 134
    :cond_1ac
    iget-object v3, v2, Lcom/tapjoy/internal/hu;->e:Ljava/lang/String;

    if-nez v3, :cond_1b2

    .line 135
    iput-object v1, v2, Lcom/tapjoy/internal/hu;->e:Ljava/lang/String;

    .line 137
    :cond_1b2
    goto :goto_19a

    .line 139
    :cond_1b3
    iget-object p1, p0, Lcom/tapjoy/internal/hw;->j:Ljava/util/ArrayList;

    if-eqz p1, :cond_1d4

    .line 140
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1bb
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/hu;

    .line 141
    iget-object v3, v2, Lcom/tapjoy/internal/hu;->f:Ljava/lang/String;

    if-nez v3, :cond_1cd

    .line 142
    iput-object v0, v2, Lcom/tapjoy/internal/hu;->f:Ljava/lang/String;

    .line 144
    :cond_1cd
    iget-object v3, v2, Lcom/tapjoy/internal/hu;->e:Ljava/lang/String;

    if-nez v3, :cond_1d3

    .line 145
    iput-object v1, v2, Lcom/tapjoy/internal/hu;->e:Ljava/lang/String;

    .line 147
    :cond_1d3
    goto :goto_1bb

    .line 149
    :cond_1d4
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->c:Lcom/tapjoy/internal/hz;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hz;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tapjoy/internal/hw;->e:Lcom/tapjoy/internal/hz;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->c:Lcom/tapjoy/internal/hz;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tapjoy/internal/hw;->b:Lcom/tapjoy/internal/hz;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tapjoy/internal/hw;->f:Lcom/tapjoy/internal/hz;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method
