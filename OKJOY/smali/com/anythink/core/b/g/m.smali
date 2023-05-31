.class public final Lcom/anythink/core/b/g/m;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/b/c/b;Lcom/anythink/core/c/c$b;)Lcom/anythink/core/b/c/b;
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/k$a;

    move-result-object v3

    .line 82
    iget v0, p2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->n(I)V

    .line 83
    iget-object v0, p2, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->f(Ljava/lang/String;)V

    .line 84
    iget v0, p2, Lcom/anythink/core/c/c$b;->v:I

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->f(I)V

    .line 85
    iget v0, p2, Lcom/anythink/core/c/c$b;->w:I

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->g(I)V

    .line 86
    iget v0, p2, Lcom/anythink/core/c/c$b;->a:I

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->i(I)V

    .line 87
    iget-object v0, p2, Lcom/anythink/core/c/c$b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->h(Ljava/lang/String;)V

    .line 88
    if-eqz v3, :cond_8d

    iget v0, v3, Lcom/anythink/core/b/c/k$a;->e:I

    :goto_3a
    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->j(I)V

    .line 89
    if-eqz v3, :cond_8f

    iget v0, v3, Lcom/anythink/core/b/c/k$a;->d:I

    :goto_41
    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->k(I)V

    .line 2718
    iget-wide v4, p2, Lcom/anythink/core/c/c$b;->l:D

    .line 90
    invoke-virtual {p1, v4, v5}, Lcom/anythink/core/b/c/b;->a(D)V

    .line 91
    iget v0, p2, Lcom/anythink/core/c/c$b;->m:I

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->h(I)V

    .line 3694
    iget-object v0, p2, Lcom/anythink/core/c/c$b;->i:Ljava/lang/String;

    .line 4058
    iput-object v0, p1, Lcom/anythink/core/b/c/n;->ac:Ljava/lang/String;

    .line 4702
    iget v0, p2, Lcom/anythink/core/c/c$b;->j:I

    .line 5066
    iput v0, p1, Lcom/anythink/core/b/c/n;->ad:I

    .line 5710
    iget v0, p2, Lcom/anythink/core/c/c$b;->k:I

    .line 6074
    iput v0, p1, Lcom/anythink/core/b/c/n;->ae:I

    .line 6790
    iget v0, p2, Lcom/anythink/core/c/c$b;->y:I

    .line 95
    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->e(I)V

    .line 6798
    iget-object v0, p2, Lcom/anythink/core/c/c$b;->z:Ljava/lang/String;

    .line 96
    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->c(Ljava/lang/String;)V

    .line 97
    iget v0, p2, Lcom/anythink/core/c/c$b;->b:I

    iget-object v3, p2, Lcom/anythink/core/c/c$b;->e:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/anythink/core/b/g/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/anythink/core/b/a/b;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 7230
    iput-object v0, p1, Lcom/anythink/core/b/c/b;->o:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/anythink/core/b/a/b;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->m(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p2}, Lcom/anythink/core/b/a/b;->setmUnitgroupInfo(Lcom/anythink/core/c/c$b;)V

    .line 103
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->v()I

    move-result v0

    if-ne v0, v2, :cond_86

    move v1, v2

    :cond_86
    invoke-virtual {p0, v1}, Lcom/anythink/core/b/a/b;->setRefresh(Z)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/anythink/core/b/a/b;->setTrackingInfo(Lcom/anythink/core/b/c/b;)V

    .line 107
    return-object p1

    :cond_8d
    move v0, v1

    .line 88
    goto :goto_3a

    :cond_8f
    move v0, v1

    .line 89
    goto :goto_41
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/b/c/b;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 112
    new-instance v2, Lcom/anythink/core/b/c/b;

    invoke-direct {v2}, Lcom/anythink/core/b/c/b;-><init>()V

    .line 113
    invoke-virtual {v2, p0}, Lcom/anythink/core/b/c/b;->q(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2, p2}, Lcom/anythink/core/b/c/b;->o(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2, p1}, Lcom/anythink/core/b/c/b;->p(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, p4}, Lcom/anythink/core/b/c/b;->m(I)V

    .line 117
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Lcom/anythink/core/c/c;->h()I

    move-result v0

    :goto_18
    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->r(I)V

    .line 118
    if-eqz p3, :cond_21

    invoke-virtual {p3}, Lcom/anythink/core/c/c;->A()I

    move-result v1

    :cond_21
    invoke-virtual {v2, v1}, Lcom/anythink/core/b/c/b;->o(I)V

    .line 120
    return-object v2

    :cond_25
    move v0, v1

    .line 117
    goto :goto_18
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/b/c/b;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v2, Lcom/anythink/core/b/c/b;

    invoke-direct {v2}, Lcom/anythink/core/b/c/b;-><init>()V

    .line 35
    invoke-virtual {v2, p1}, Lcom/anythink/core/b/c/b;->o(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2, p0}, Lcom/anythink/core/b/c/b;->p(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->A()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->o(I)V

    .line 40
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->s()I

    move-result v0

    const-string v3, "1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_7b

    .line 41
    const-string v0, "1"

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->i(Ljava/lang/String;)V

    .line 46
    :goto_28
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->s()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->q(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, p2}, Lcom/anythink/core/b/c/b;->j(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->r(I)V

    .line 51
    invoke-virtual {v2, p4}, Lcom/anythink/core/b/c/b;->g(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, p5}, Lcom/anythink/core/b/c/b;->l(I)V

    .line 53
    if-eqz p6, :cond_81

    const/4 v0, 0x1

    :goto_46
    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->m(I)V

    .line 1359
    iput v1, v2, Lcom/anythink/core/b/c/b;->l:I

    .line 2350
    const/4 v0, 0x2

    iput v0, v2, Lcom/anythink/core/b/c/b;->k:I

    .line 57
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->n(Ljava/lang/String;)V

    .line 2368
    iput v1, v2, Lcom/anythink/core/b/c/b;->m:I

    .line 60
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->d(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->e(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->a(Ljava/util/Map;)V

    .line 63
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->d()Lcom/anythink/core/api/ATRewardInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->a(Lcom/anythink/core/api/ATRewardInfo;)V

    .line 64
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->b(Ljava/util/Map;)V

    .line 66
    return-object v2

    .line 43
    :cond_7b
    const-string v0, "0"

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/b;->i(Ljava/lang/String;)V

    goto :goto_28

    :cond_81
    move v0, v1

    .line 53
    goto :goto_46
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/core/b/c/b;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 133
    invoke-static {p0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/a/a;->a(I)Ljava/util/Map;

    move-result-object v6

    .line 137
    if-eqz v6, :cond_35

    .line 138
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v2

    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/k;

    .line 139
    iget v8, v0, Lcom/anythink/core/b/c/k;->c:I

    add-int/2addr v3, v8

    .line 140
    iget v0, v0, Lcom/anythink/core/b/c/k;->d:I

    add-int/2addr v0, v1

    move v1, v0

    .line 141
    goto :goto_21

    :cond_35
    move v1, v2

    move v3, v2

    .line 144
    :cond_37
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/k;

    .line 146
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/anythink/core/b/c/b;->a(I)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/anythink/core/b/c/b;->b(I)V

    .line 148
    if-eqz v0, :cond_77

    iget v1, v0, Lcom/anythink/core/b/c/k;->c:I

    :goto_4f
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/anythink/core/b/c/b;->c(I)V

    .line 149
    if-eqz v0, :cond_58

    iget v2, v0, Lcom/anythink/core/b/c/k;->d:I

    :cond_58
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->d(I)V

    .line 150
    const-string v0, "anythink"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Check cap waite time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    :cond_77
    move v1, v2

    .line 148
    goto :goto_4f
.end method
