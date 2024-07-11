.class public final Lcom/anythink/basead/e/c/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/u;)V
    .registers 6

    .line 35
    if-eqz p0, :cond_5a

    if-nez p1, :cond_5

    goto :goto_5a

    .line 39
    :cond_5
    iget-object v0, p0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    .line 40
    if-eqz v0, :cond_59

    iget-object v1, p0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    instance-of v1, v1, Lcom/anythink/core/common/d/v;

    if-nez v1, :cond_10

    goto :goto_59

    .line 44
    :cond_10
    invoke-virtual {p1}, Lcom/anythink/core/common/d/u;->x()Lcom/anythink/core/common/d/v;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_51

    .line 47
    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->n()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/d/j;->l(I)V

    .line 48
    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->o()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/d/j;->m(I)V

    .line 49
    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->i()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/d/j;->g(I)V

    .line 51
    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/d/j;->a(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->j()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/d/j;->h(I)V

    .line 54
    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/d/j;->f(I)V

    .line 55
    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/d/j;->a(J)V

    .line 56
    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->f()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/d/j;->e(I)V

    .line 58
    iput-object v1, p0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    return-void

    .line 60
    :cond_51
    iget-object p0, p0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    check-cast p0, Lcom/anythink/core/common/d/v;

    invoke-virtual {p1, p0}, Lcom/anythink/core/common/d/u;->a(Lcom/anythink/core/common/d/v;)V

    .line 62
    return-void

    .line 41
    :cond_59
    :goto_59
    return-void

    .line 36
    :cond_5a
    :goto_5a
    return-void
.end method

.method private static a(Lcom/anythink/core/common/d/v;Lcom/anythink/basead/e/c;)V
    .registers 4

    .line 19
    if-eqz p0, :cond_38

    if-nez p1, :cond_5

    goto :goto_38

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/anythink/basead/e/c;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/d/v;->l(I)V

    .line 24
    invoke-virtual {p1}, Lcom/anythink/basead/e/c;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/d/v;->m(I)V

    .line 26
    invoke-virtual {p1}, Lcom/anythink/basead/e/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/d/v;->a(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/anythink/basead/e/c;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/d/v;->g(I)V

    .line 29
    invoke-virtual {p1}, Lcom/anythink/basead/e/c;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/d/v;->f(I)V

    .line 30
    invoke-virtual {p1}, Lcom/anythink/basead/e/c;->f()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/common/d/v;->a(J)V

    .line 31
    invoke-virtual {p1}, Lcom/anythink/basead/e/c;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/d/v;->e(I)V

    .line 32
    return-void

    .line 20
    :cond_38
    :goto_38
    return-void
.end method
