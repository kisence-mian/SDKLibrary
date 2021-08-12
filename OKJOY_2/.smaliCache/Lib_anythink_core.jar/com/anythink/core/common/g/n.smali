.class public final Lcom/anythink/core/common/g/n;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/d/d;Lcom/anythink/core/c/c$b;I)Lcom/anythink/core/common/d/d;
    .registers 7

    .line 90
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/x$a;

    move-result-object v0

    .line 92
    iget v1, p2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/d/d;->o(I)V

    .line 93
    iget-object v1, p2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/d/d;->h(Ljava/lang/String;)V

    .line 94
    iget v1, p2, Lcom/anythink/core/c/c$b;->y:I

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/d/d;->f(I)V

    .line 95
    iget v1, p2, Lcom/anythink/core/c/c$b;->z:I

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/d/d;->g(I)V

    .line 96
    invoke-virtual {p1, p3}, Lcom/anythink/core/common/d/d;->i(I)V

    .line 97
    iget-object p3, p2, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/anythink/core/common/d/d;->j(Ljava/lang/String;)V

    .line 98
    const/4 p3, 0x0

    if-eqz v0, :cond_38

    iget v1, v0, Lcom/anythink/core/common/d/x$a;->e:I

    goto :goto_39

    :cond_38
    move v1, p3

    :goto_39
    invoke-virtual {p1, v1}, Lcom/anythink/core/common/d/d;->k(I)V

    .line 99
    if-eqz v0, :cond_41

    iget v0, v0, Lcom/anythink/core/common/d/x$a;->d:I

    goto :goto_42

    :cond_41
    move v0, p3

    :goto_42
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/d/d;->l(I)V

    .line 100
    nop

    .line 2988
    iget-wide v0, p2, Lcom/anythink/core/c/c$b;->m:D

    .line 100
    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/common/d/d;->a(D)V

    .line 101
    iget v0, p2, Lcom/anythink/core/c/c$b;->n:I

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/d/d;->h(I)V

    .line 102
    iget-object v0, p2, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/d/d;->b(Ljava/lang/String;)V

    .line 103
    nop

    .line 3964
    iget-object v0, p2, Lcom/anythink/core/c/c$b;->j:Ljava/lang/String;

    .line 4065
    iput-object v0, p1, Lcom/anythink/core/common/d/aa;->ag:Ljava/lang/String;

    .line 104
    nop

    .line 4972
    iget v0, p2, Lcom/anythink/core/c/c$b;->k:I

    .line 5073
    iput v0, p1, Lcom/anythink/core/common/d/aa;->ah:I

    .line 105
    nop

    .line 5980
    iget v0, p2, Lcom/anythink/core/c/c$b;->l:I

    .line 6081
    iput v0, p1, Lcom/anythink/core/common/d/aa;->ai:I

    .line 106
    nop

    .line 7060
    iget v0, p2, Lcom/anythink/core/c/c$b;->B:I

    .line 106
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/d/d;->e(I)V

    .line 107
    nop

    .line 7068
    iget-object v0, p2, Lcom/anythink/core/c/c$b;->C:Ljava/lang/String;

    .line 107
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/d/d;->e(Ljava/lang/String;)V

    .line 110
    :try_start_70
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 7277
    iput-object v0, p1, Lcom/anythink/core/common/d/d;->q:Ljava/lang/String;
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_77

    .line 113
    goto :goto_78

    .line 111
    :catchall_77
    move-exception v0

    .line 115
    :goto_78
    iget-object v0, p2, Lcom/anythink/core/c/c$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    :cond_85
    iget-object v0, p2, Lcom/anythink/core/c/c$b;->c:Ljava/lang/String;

    :goto_87
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/d/d;->o(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/d/d;->a(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->setmUnitgroupInfo(Lcom/anythink/core/c/c$b;)V

    .line 119
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->w()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_a0

    move p3, v0

    :cond_a0
    invoke-virtual {p0, p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->setRefresh(Z)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->setTrackingInfo(Lcom/anythink/core/common/d/d;)V

    .line 123
    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/common/d/d;
    .registers 6

    .line 128
    new-instance v0, Lcom/anythink/core/common/d/d;

    invoke-direct {v0}, Lcom/anythink/core/common/d/d;-><init>()V

    .line 129
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->s(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p2}, Lcom/anythink/core/common/d/d;->q(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/d/d;->r(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p4}, Lcom/anythink/core/common/d/d;->n(I)V

    .line 133
    const/4 p0, 0x0

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Lcom/anythink/core/c/c;->p()I

    move-result p1

    goto :goto_1a

    :cond_19
    move p1, p0

    :goto_1a
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/d/d;->s(I)V

    .line 134
    if-eqz p3, :cond_23

    invoke-virtual {p3}, Lcom/anythink/core/c/c;->F()I

    move-result p0

    :cond_23
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->p(I)V

    .line 135
    if-eqz p3, :cond_2d

    invoke-virtual {p3}, Lcom/anythink/core/c/c;->v()Ljava/lang/String;

    move-result-object p0

    goto :goto_2f

    :cond_2d
    const-string p0, ""

    :goto_2f
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->p(Ljava/lang/String;)V

    .line 136
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/common/d/d;
    .registers 9

    .line 41
    new-instance v0, Lcom/anythink/core/common/d/d;

    invoke-direct {v0}, Lcom/anythink/core/common/d/d;-><init>()V

    .line 42
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/d/d;->q(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->r(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->F()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->p(I)V

    .line 47
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->y()I

    move-result p0

    const-string p1, "1"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p0, v1, :cond_22

    .line 48
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/d/d;->k(Ljava/lang/String;)V

    goto :goto_27

    .line 50
    :cond_22
    const-string p0, "0"

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->k(Ljava/lang/String;)V

    .line 53
    :goto_27
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->y()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->s(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p2}, Lcom/anythink/core/common/d/d;->l(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->p()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->s(I)V

    .line 58
    invoke-virtual {v0, p4}, Lcom/anythink/core/common/d/d;->i(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p5}, Lcom/anythink/core/common/d/d;->m(I)V

    .line 60
    invoke-virtual {v0, p6}, Lcom/anythink/core/common/d/d;->n(I)V

    .line 62
    nop

    .line 1414
    const/4 p0, 0x0

    iput p0, v0, Lcom/anythink/core/common/d/d;->n:I

    .line 63
    nop

    .line 2405
    const/4 p1, 0x2

    iput p1, v0, Lcom/anythink/core/common/d/d;->m:I

    .line 64
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/d/d;->p(Ljava/lang/String;)V

    .line 65
    nop

    .line 2423
    iput p0, v0, Lcom/anythink/core/common/d/d;->o:I

    .line 67
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->f(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->g(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->j()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->a(Ljava/util/Map;)V

    .line 70
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->m()Lcom/anythink/core/api/ATRewardInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->a(Lcom/anythink/core/api/ATRewardInfo;)V

    .line 71
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->n()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/d;->b(Ljava/util/Map;)V

    .line 73
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->h()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/d/d;->a(J)V

    .line 74
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->i()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/d/d;->b(J)V

    .line 76
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/core/common/d/d;)V
    .registers 10

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 148
    invoke-static {p0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/anythink/core/a/a;->a(I)Ljava/util/Map;

    move-result-object p0

    .line 149
    nop

    .line 150
    nop

    .line 152
    nop

    .line 153
    const/4 v2, 0x0

    if-eqz p0, :cond_42

    .line 154
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    move v5, v4

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anythink/core/common/d/x;

    .line 155
    iget v7, v6, Lcom/anythink/core/common/d/x;->c:I

    add-int/2addr v4, v7

    .line 156
    iget v6, v6, Lcom/anythink/core/common/d/x;->d:I

    add-int/2addr v5, v6

    .line 157
    goto :goto_24

    .line 159
    :cond_37
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/anythink/core/common/d/x;

    goto :goto_45

    .line 153
    :cond_42
    const/4 p0, 0x0

    move v4, v2

    move v5, v4

    .line 162
    :goto_45
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Lcom/anythink/core/common/d/d;->a(I)V

    .line 163
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Lcom/anythink/core/common/d/d;->b(I)V

    .line 164
    if-eqz p0, :cond_54

    iget v3, p0, Lcom/anythink/core/common/d/x;->c:I

    goto :goto_55

    :cond_54
    move v3, v2

    :goto_55
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/anythink/core/common/d/d;->c(I)V

    .line 165
    if-eqz p0, :cond_5e

    iget v2, p0, Lcom/anythink/core/common/d/x;->d:I

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/anythink/core/common/d/d;->d(I)V

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Check cap waite time:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "anythink"

    invoke-static {p1, p0}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method
