.class public Lcom/tendcloud/tenddata/game/cj;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/cj$b;,
        Lcom/tendcloud/tenddata/game/cj$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I


# instance fields
.field private f:Lcom/tendcloud/tenddata/game/cf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x2

    sput v0, Lcom/tendcloud/tenddata/game/cj;->a:I

    .line 17
    const/4 v0, 0x6

    sput v0, Lcom/tendcloud/tenddata/game/cj;->b:I

    .line 18
    sput v0, Lcom/tendcloud/tenddata/game/cj;->c:I

    .line 19
    const/16 v0, -0x28

    sput v0, Lcom/tendcloud/tenddata/game/cj;->d:I

    .line 20
    const/4 v0, 0x4

    sput v0, Lcom/tendcloud/tenddata/game/cj;->e:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/tendcloud/tenddata/game/cf;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cf;-><init>()V

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cj;-><init>(Lcom/tendcloud/tenddata/game/cf;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/tendcloud/tenddata/game/cf;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cj;->f:Lcom/tendcloud/tenddata/game/cf;

    .line 51
    return-void
.end method


# virtual methods
.method public a(II)D
    .registers 11

    .line 272
    const-wide/16 v0, 0x0

    if-gez p1, :cond_34

    if-ltz p2, :cond_7

    goto :goto_34

    .line 275
    :cond_7
    add-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    int-to-double v2, p2

    .line 276
    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 277
    sget v4, Lcom/tendcloud/tenddata/game/cj;->a:I

    int-to-double v5, v4

    cmpl-double v7, p1, v5

    if-lez v7, :cond_24

    int-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, p1, v0

    .line 278
    :cond_24
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    sget p1, Lcom/tendcloud/tenddata/game/cj;->b:I

    int-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    return-wide p1

    .line 273
    :cond_34
    :goto_34
    return-wide v0
.end method

.method public a(Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ci;)D
    .registers 21

    .line 61
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/game/ci;->a(Z)Ljava/util/Map;

    move-result-object v3

    .line 62
    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Lcom/tendcloud/tenddata/game/ci;->a(Z)Ljava/util/Map;

    move-result-object v5

    .line 64
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 65
    nop

    .line 66
    nop

    .line 67
    nop

    .line 68
    nop

    .line 69
    nop

    .line 71
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_74

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 72
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Lcom/tendcloud/tenddata/game/ce;

    .line 73
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tendcloud/tenddata/game/ce;

    .line 74
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ce;->c()B

    move-result v9

    add-int/2addr v11, v9

    .line 76
    if-nez v8, :cond_50

    .line 77
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 79
    :cond_50
    add-int/lit8 v10, v10, 0x1

    .line 80
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ce;->c()B

    move-result v9

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/game/ce;->c()B

    move-result v2

    invoke-virtual {v0, v9, v2}, Lcom/tendcloud/tenddata/game/cj;->b(II)D

    move-result-wide v16

    .line 81
    add-double v12, v12, v16

    .line 82
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ce;->c()B

    move-result v1

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/game/ce;->c()B

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/cj;->a(II)D

    move-result-wide v1

    mul-double v16, v16, v1

    add-double v14, v14, v16

    .line 84
    :goto_70
    move-object/from16 v2, p1

    const/4 v1, 0x0

    goto :goto_27

    .line 85
    :cond_74
    if-nez v10, :cond_79

    .line 86
    const-wide/16 v1, 0x0

    return-wide v1

    .line 89
    :cond_79
    const-wide/16 v1, 0x0

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_83
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ac

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tendcloud/tenddata/game/ce;

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/game/ce;->c()B

    move-result v8

    add-int/2addr v11, v8

    .line 95
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ab

    .line 96
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_ab
    goto :goto_83

    .line 103
    :cond_ac
    invoke-virtual/range {p1 .. p1}, Lcom/tendcloud/tenddata/game/ci;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/tendcloud/tenddata/game/ci;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    sub-int/2addr v3, v4

    .line 104
    div-int/2addr v11, v3

    .line 106
    nop

    .line 107
    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cj;->f:Lcom/tendcloud/tenddata/game/cf;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/cf;->d()I

    move-result v3

    int-to-double v4, v11

    const-wide v7, 0x3ff3333333333333L    # 1.2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v7

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 108
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v8, v1

    :goto_db
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_f1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/ce;

    .line 109
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ce;->c()B

    move-result v1

    if-le v1, v3, :cond_f0

    .line 110
    add-double/2addr v8, v5

    .line 112
    :cond_f0
    goto :goto_db

    .line 114
    :cond_f1
    mul-int/lit8 v10, v10, 0x2

    int-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v8

    div-double/2addr v8, v1

    .line 116
    div-double/2addr v14, v12

    sget v1, Lcom/tendcloud/tenddata/game/cj;->e:I

    int-to-double v1, v1

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sub-double/2addr v5, v1

    mul-double v14, v14, v5

    return-wide v14
.end method

.method public a(Lcom/tendcloud/tenddata/game/ci;Ljava/util/List;)D
    .registers 7

    .line 127
    nop

    .line 128
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v0, 0x0

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/ci;

    .line 129
    invoke-virtual {p0, v2, p1}, Lcom/tendcloud/tenddata/game/cj;->a(Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ci;)D

    move-result-wide v2

    .line 130
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 132
    goto :goto_7

    .line 134
    :cond_1c
    return-wide v0
.end method

.method public a(Ljava/util/List;Ljava/util/List;)D
    .registers 8

    .line 146
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_3d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3d

    .line 149
    :cond_f
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 150
    invoke-virtual {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/cj;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 152
    nop

    .line 153
    const/4 p1, 0x0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/cj$a;

    .line 155
    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cj$a;->fp1:Lcom/tendcloud/tenddata/game/ci;

    if-eqz v3, :cond_36

    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cj$a;->fp2:Lcom/tendcloud/tenddata/game/ci;

    if-eqz v3, :cond_36

    .line 156
    iget-wide v3, v0, Lcom/tendcloud/tenddata/game/cj$a;->score:D

    add-double/2addr v1, v3

    .line 157
    add-int/lit8 p1, p1, 0x1

    .line 160
    :cond_36
    goto :goto_1d

    .line 161
    :cond_37
    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, p1

    return-wide v1

    .line 147
    :cond_3d
    :goto_3d
    return-wide v1
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)D
    .registers 9

    .line 240
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_65

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_65

    .line 245
    :cond_f
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 246
    invoke-virtual {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/cj;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 247
    nop

    .line 248
    const/4 p1, 0x0

    .line 249
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/cj$a;

    .line 250
    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cj$a;->fp1:Lcom/tendcloud/tenddata/game/ci;

    if-eqz v3, :cond_42

    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cj$a;->fp2:Lcom/tendcloud/tenddata/game/ci;

    if-eqz v3, :cond_42

    .line 251
    iget-wide v3, v0, Lcom/tendcloud/tenddata/game/cj$a;->score:D

    add-double/2addr v1, v3

    .line 252
    add-int/lit8 p1, p1, 0x1

    .line 253
    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cj$a;->fp1:Lcom/tendcloud/tenddata/game/ci;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/cj$a;->fp2:Lcom/tendcloud/tenddata/game/ci;

    invoke-virtual {p0, v3, v0}, Lcom/tendcloud/tenddata/game/cj;->b(Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ci;)Lcom/tendcloud/tenddata/game/ci;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 255
    :cond_42
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/cj;->f:Lcom/tendcloud/tenddata/game/cf;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/cf;->b()I

    move-result v4

    if-ge v3, v4, :cond_5e

    .line 256
    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cj$a;->fp1:Lcom/tendcloud/tenddata/game/ci;

    if-nez v3, :cond_55

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/cj$a;->fp2:Lcom/tendcloud/tenddata/game/ci;

    goto :goto_57

    :cond_55
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/cj$a;->fp1:Lcom/tendcloud/tenddata/game/ci;

    :goto_57
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ci;->d()Lcom/tendcloud/tenddata/game/ci;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_5e
    :goto_5e
    goto :goto_1d

    .line 260
    :cond_5f
    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, p1

    return-wide v1

    .line 241
    :cond_65
    :goto_65
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    return-wide v1
.end method

.method public b(II)D
    .registers 7

    .line 327
    if-gez p1, :cond_29

    if-ltz p2, :cond_5

    goto :goto_29

    .line 330
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double p1, p1

    .line 332
    sget v0, Lcom/tendcloud/tenddata/game/cj;->d:I

    int-to-double v1, v0

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_14

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    goto :goto_28

    :cond_14
    const-wide/high16 v1, 0x4060000000000000L    # 128.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v1

    add-int/lit16 v0, v0, 0x80

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    sget v0, Lcom/tendcloud/tenddata/game/cj;->c:I

    int-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    :goto_28
    return-wide p1

    .line 328
    :cond_29
    :goto_29
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public b(Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ci;)Lcom/tendcloud/tenddata/game/ci;
    .registers 20

    .line 172
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/game/ci;->a(Z)Ljava/util/Map;

    move-result-object v2

    .line 173
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Lcom/tendcloud/tenddata/game/ci;->a(Z)Ljava/util/Map;

    move-result-object v1

    .line 175
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 177
    new-instance v5, Lcom/tendcloud/tenddata/game/ci;

    invoke-direct {v5}, Lcom/tendcloud/tenddata/game/ci;-><init>()V

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/tendcloud/tenddata/game/ci;->b()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tendcloud/tenddata/game/ci;->setPoiId(J)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/tendcloud/tenddata/game/ci;->a()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/tendcloud/tenddata/game/ci;->setTimestamp(I)V

    .line 180
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 181
    invoke-virtual {v5, v3}, Lcom/tendcloud/tenddata/game/ci;->setBsslist(Ljava/util/List;)V

    .line 183
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_37
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    if-eqz v7, :cond_9a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tendcloud/tenddata/game/ce;

    .line 185
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tendcloud/tenddata/game/ce;

    .line 186
    if-nez v7, :cond_74

    .line 188
    invoke-virtual {v10}, Lcom/tendcloud/tenddata/game/ce;->c()B

    move-result v7

    neg-int v7, v7

    int-to-double v11, v7

    .line 189
    :goto_60
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 190
    add-double/2addr v11, v8

    goto :goto_60

    .line 192
    :cond_6c
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v7, v10}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    goto :goto_99

    .line 196
    :cond_74
    new-instance v8, Lcom/tendcloud/tenddata/game/ce;

    .line 197
    invoke-virtual {v7}, Lcom/tendcloud/tenddata/game/ce;->a()Ljava/lang/String;

    move-result-object v12

    .line 198
    invoke-virtual {v7}, Lcom/tendcloud/tenddata/game/ce;->b()Ljava/lang/String;

    move-result-object v13

    .line 199
    invoke-virtual {v7}, Lcom/tendcloud/tenddata/game/ce;->c()B

    move-result v9

    invoke-virtual {v10}, Lcom/tendcloud/tenddata/game/ce;->c()B

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-byte v14, v9

    .line 200
    invoke-virtual {v7}, Lcom/tendcloud/tenddata/game/ce;->d()B

    move-result v15

    .line 201
    invoke-virtual {v7}, Lcom/tendcloud/tenddata/game/ce;->e()B

    move-result v16

    move-object v11, v8

    invoke-direct/range {v11 .. v16}, Lcom/tendcloud/tenddata/game/ce;-><init>(Ljava/lang/String;Ljava/lang/String;BBB)V

    .line 202
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :goto_99
    goto :goto_37

    .line 206
    :cond_9a
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_dc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 207
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_db

    .line 208
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tendcloud/tenddata/game/ce;

    invoke-virtual {v7}, Lcom/tendcloud/tenddata/game/ce;->c()B

    move-result v7

    neg-int v7, v7

    int-to-double v10, v7

    .line 209
    :goto_c4
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 210
    add-double/2addr v10, v8

    goto :goto_c4

    .line 212
    :cond_d0
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_db
    goto :goto_a2

    .line 219
    :cond_dc
    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    neg-double v6, v6

    double-to-int v4, v6

    int-to-byte v4, v4

    .line 221
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v0, Lcom/tendcloud/tenddata/game/cj;->f:Lcom/tendcloud/tenddata/game/cf;

    invoke-virtual {v7}, Lcom/tendcloud/tenddata/game/cf;->c()I

    move-result v7

    if-ge v6, v7, :cond_11a

    iget-object v6, v0, Lcom/tendcloud/tenddata/game/cj;->f:Lcom/tendcloud/tenddata/game/cf;

    invoke-virtual {v6}, Lcom/tendcloud/tenddata/game/cf;->d()I

    move-result v6

    if-ge v4, v6, :cond_112

    .line 222
    goto :goto_11a

    .line 224
    :cond_112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    goto :goto_e4

    .line 226
    :cond_11a
    :goto_11a
    return-object v5
.end method

.method public b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 16

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 292
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/ci;

    .line 294
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_23
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/tendcloud/tenddata/game/ci;

    .line 295
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {p0, v3, v7}, Lcom/tendcloud/tenddata/game/cj;->a(Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ci;)D

    move-result-wide v8

    .line 297
    new-instance v11, Lcom/tendcloud/tenddata/game/cj$a;

    move-object v4, v11

    move-object v5, p0

    move-object v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/tendcloud/tenddata/game/cj$a;-><init>(Lcom/tendcloud/tenddata/game/cj;Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ci;D)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    goto :goto_23

    .line 299
    :cond_43
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    goto :goto_13

    .line 301
    :cond_47
    new-instance p1, Lcom/tendcloud/tenddata/game/ck;

    invoke-direct {p1, p0}, Lcom/tendcloud/tenddata/game/ck;-><init>(Lcom/tendcloud/tenddata/game/cj;)V

    .line 307
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 309
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 310
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_56
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tendcloud/tenddata/game/cj$a;

    .line 311
    iget-object v0, p2, Lcom/tendcloud/tenddata/game/cj$a;->fp1:Lcom/tendcloud/tenddata/game/ci;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p2, Lcom/tendcloud/tenddata/game/cj$a;->fp2:Lcom/tendcloud/tenddata/game/ci;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 312
    iget-object v0, p2, Lcom/tendcloud/tenddata/game/cj$a;->fp1:Lcom/tendcloud/tenddata/game/ci;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p2, Lcom/tendcloud/tenddata/game/cj$a;->fp2:Lcom/tendcloud/tenddata/game/ci;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 314
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_7f
    goto :goto_56

    .line 317
    :cond_80
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_84
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/tendcloud/tenddata/game/ci;

    .line 318
    new-instance p2, Lcom/tendcloud/tenddata/game/cj$a;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/tendcloud/tenddata/game/cj$a;-><init>(Lcom/tendcloud/tenddata/game/cj;Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ci;D)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    goto :goto_84

    .line 320
    :cond_9f
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_be

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/tendcloud/tenddata/game/ci;

    .line 321
    new-instance p2, Lcom/tendcloud/tenddata/game/cj$a;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/cj$a;-><init>(Lcom/tendcloud/tenddata/game/cj;Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ci;D)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    goto :goto_a3

    .line 323
    :cond_be
    return-void
.end method
