.class public final Lcom/tapjoy/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/tapjoy/internal/bi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    .line 92
    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 93
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "orderId"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 95
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/e;->a:Ljava/lang/String;

    goto :goto_a

    .line 96
    :cond_23
    const-string v1, "packageName"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 97
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/e;->b:Ljava/lang/String;

    goto :goto_a

    .line 98
    :cond_32
    const-string v1, "productId"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 99
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/e;->c:Ljava/lang/String;

    goto :goto_a

    .line 100
    :cond_41
    const-string v1, "purchaseTime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 101
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/e;->d:J

    goto :goto_a

    .line 102
    :cond_50
    const-string v1, "purchaseState"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 103
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->r()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/e;->e:I

    goto :goto_a

    .line 104
    :cond_5f
    const-string v1, "developerPayload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 105
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/e;->f:Ljava/lang/String;

    goto :goto_a

    .line 106
    :cond_6e
    const-string v1, "purchaseToken"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 107
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/e;->g:Ljava/lang/String;

    goto :goto_a

    .line 109
    :cond_7d
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    .line 111
    goto :goto_a

    .line 112
    :cond_81
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 113
    return-void
.end method
