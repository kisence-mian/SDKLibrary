.class Lcom/umeng/analytics/pro/ba$a;
.super Lcom/umeng/analytics/pro/bz;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/bz<",
        "Lcom/umeng/analytics/pro/ba;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 215
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/ba$1;)V
    .registers 2

    .line 215
    invoke-direct {p0}, Lcom/umeng/analytics/pro/ba$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 215
    check-cast p2, Lcom/umeng/analytics/pro/ba;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/ba$a;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/ba;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/ba;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/umeng/analytics/pro/ba;->b:Lcom/umeng/analytics/pro/ax;

    .line 220
    iput-object v0, p2, Lcom/umeng/analytics/pro/ba;->a:Ljava/lang/Object;

    .line 222
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    .line 224
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    .line 226
    invoke-virtual {p2, p1, v0}, Lcom/umeng/analytics/pro/ba;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/bk;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/ba;->a:Ljava/lang/Object;

    .line 227
    iget-object v1, p2, Lcom/umeng/analytics/pro/ba;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1e

    .line 228
    iget-short v0, v0, Lcom/umeng/analytics/pro/bk;->c:S

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/ba;->a(S)Lcom/umeng/analytics/pro/ax;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/ba;->b:Lcom/umeng/analytics/pro/ax;

    .line 231
    :cond_1e
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->m()V

    .line 235
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    .line 236
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->k()V

    .line 237
    return-void
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 215
    check-cast p2, Lcom/umeng/analytics/pro/ba;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/ba$a;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/ba;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/ba;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 241
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ba;->a()Lcom/umeng/analytics/pro/ax;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ba;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 244
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/ba;->d()Lcom/umeng/analytics/pro/bu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bu;)V

    .line 245
    iget-object v0, p2, Lcom/umeng/analytics/pro/ba;->b:Lcom/umeng/analytics/pro/ax;

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/ba;->c(Lcom/umeng/analytics/pro/ax;)Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 246
    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/ba;->a(Lcom/umeng/analytics/pro/bp;)V

    .line 247
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 248
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->d()V

    .line 249
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->b()V

    .line 250
    return-void

    .line 242
    :cond_29
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1
.end method
