.class public final Lcom/tapjoy/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/tapjoy/internal/bi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    .line 68
    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 69
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "productId"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 71
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/d;->a:Ljava/lang/String;

    goto :goto_a

    .line 72
    :cond_23
    const-string v1, "type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 73
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/d;->b:Ljava/lang/String;

    goto :goto_a

    .line 74
    :cond_32
    const-string v1, "price"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 75
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/d;->c:Ljava/lang/String;

    goto :goto_a

    .line 76
    :cond_41
    const-string v1, "title"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 77
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/d;->d:Ljava/lang/String;

    goto :goto_a

    .line 78
    :cond_50
    const-string v1, "description"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 79
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/d;->e:Ljava/lang/String;

    goto :goto_a

    .line 80
    :cond_5f
    const-string v1, "price_currency_code"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 81
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/d;->f:Ljava/lang/String;

    goto :goto_a

    .line 82
    :cond_6e
    const-string v1, "price_amount_micros"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 83
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/d;->g:J

    goto :goto_a

    .line 85
    :cond_7d
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    .line 87
    goto :goto_a

    .line 88
    :cond_81
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 89
    return-void
.end method
