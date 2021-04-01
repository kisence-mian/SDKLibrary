.class final Lcom/anythink/myoffer/a/a/h;
.super Lcom/anythink/myoffer/a/a/b;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 19
    invoke-direct {p0, p4}, Lcom/anythink/myoffer/a/a/b;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/anythink/myoffer/a/a/h;->f:Ljava/lang/String;

    .line 21
    iput-boolean p2, p0, Lcom/anythink/myoffer/a/a/h;->g:Z

    .line 22
    iput-boolean p5, p0, Lcom/anythink/myoffer/a/a/h;->h:Z

    .line 23
    iput-object p3, p0, Lcom/anythink/myoffer/a/a/h;->i:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected final b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 14

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/anythink/myoffer/a/a/b;->b(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 55
    iget-boolean v0, p0, Lcom/anythink/myoffer/a/a/h;->h:Z

    if-eqz v0, :cond_1c

    .line 56
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/h;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/myoffer/a/a/h;->a:Ljava/lang/String;

    const-string v4, "0"

    iget-wide v5, p0, Lcom/anythink/myoffer/a/a/h;->e:J

    .line 57
    invoke-virtual {p1}, Lcom/anythink/network/myoffer/MyOfferError;->printStackTrace()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Lcom/anythink/myoffer/a/a/h;->c:J

    const-wide/16 v10, 0x0

    .line 56
    invoke-static/range {v1 .. v11}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJ)V

    .line 59
    :cond_1c
    return-void
.end method

.method protected final c()V
    .registers 1

    .prologue
    .line 34
    return-void
.end method

.method protected final d()Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/anythink/myoffer/a/a/h;->g:Z

    return v0
.end method

.method protected final f()V
    .registers 13

    .prologue
    .line 45
    invoke-super {p0}, Lcom/anythink/myoffer/a/a/b;->f()V

    .line 46
    iget-boolean v0, p0, Lcom/anythink/myoffer/a/a/h;->h:Z

    if-eqz v0, :cond_19

    .line 47
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/h;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/myoffer/a/a/h;->a:Ljava/lang/String;

    const-string v4, "1"

    iget-wide v5, p0, Lcom/anythink/myoffer/a/a/h;->e:J

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/anythink/myoffer/a/a/h;->c:J

    iget-wide v10, p0, Lcom/anythink/myoffer/a/a/h;->d:J

    invoke-static/range {v1 .. v11}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJ)V

    .line 50
    :cond_19
    return-void
.end method
