.class final Lcom/tendcloud/tenddata/game/cg;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/cg$c;,
        Lcom/tendcloud/tenddata/game/cg$b;,
        Lcom/tendcloud/tenddata/game/cg$a;,
        Lcom/tendcloud/tenddata/game/cg$e;,
        Lcom/tendcloud/tenddata/game/cg$d;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I


# instance fields
.field private f:Lcom/tendcloud/tenddata/game/cg$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const/4 v0, 0x2

    sput v0, Lcom/tendcloud/tenddata/game/cg;->a:I

    .line 18
    const/4 v0, 0x6

    sput v0, Lcom/tendcloud/tenddata/game/cg;->b:I

    .line 19
    sput v0, Lcom/tendcloud/tenddata/game/cg;->c:I

    .line 20
    const/16 v0, -0x28

    sput v0, Lcom/tendcloud/tenddata/game/cg;->d:I

    .line 21
    const/4 v0, 0x4

    sput v0, Lcom/tendcloud/tenddata/game/cg;->e:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/tendcloud/tenddata/game/cg$b;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cg$b;-><init>()V

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/cg;-><init>(Lcom/tendcloud/tenddata/game/cg$b;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/game/cg$b;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cg;->f:Lcom/tendcloud/tenddata/game/cg$b;

    .line 55
    return-void
.end method


# virtual methods
.method a(II)D
    .registers 11

    .line 281
    const-wide/16 v0, 0x0

    if-gez p1, :cond_34

    if-ltz p2, :cond_7

    goto :goto_34

    .line 284
    :cond_7
    add-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    int-to-double v2, p2

    .line 285
    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    .line 286
    sget v4, Lcom/tendcloud/tenddata/game/cg;->a:I

    int-to-double v5, v4

    cmpl-double v7, p1, v5

    if-lez v7, :cond_24

    int-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, p1, v0

    .line 287
    :cond_24
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    sget p1, Lcom/tendcloud/tenddata/game/cg;->b:I

    int-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    return-wide p1

    .line 282
    :cond_34
    :goto_34
    return-wide v0
.end method

.method a(Lcom/tendcloud/tenddata/game/cg$c;Lcom/tendcloud/tenddata/game/cg$c;)D
    .registers 21

    .line 66
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/game/cg$c;->getBssmap(Z)Ljava/util/Map;

    move-result-object v3

    .line 67
    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Lcom/tendcloud/tenddata/game/cg$c;->getBssmap(Z)Ljava/util/Map;

    move-result-object v5

    .line 69
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 70
    nop

    .line 71
    nop

    .line 72
    nop

    .line 73
    nop

    .line 74
    nop

    .line 76
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

    .line 77
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Lcom/tendcloud/tenddata/game/cg$a;

    .line 78
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tendcloud/tenddata/game/cg$a;

    .line 79
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cg$a;->getRssi()B

    move-result v9

    add-int/2addr v11, v9

    .line 81
    if-nez v8, :cond_50

    .line 82
    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 84
    :cond_50
    add-int/lit8 v10, v10, 0x1

    .line 85
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cg$a;->getRssi()B

    move-result v9

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/game/cg$a;->getRssi()B

    move-result v2

    invoke-virtual {v0, v9, v2}, Lcom/tendcloud/tenddata/game/cg;->b(II)D

    move-result-wide v16

    .line 86
    add-double v12, v12, v16

    .line 87
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cg$a;->getRssi()B

    move-result v1

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/game/cg$a;->getRssi()B

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/cg;->a(II)D

    move-result-wide v1

    mul-double v16, v16, v1

    add-double v14, v14, v16

    .line 89
    :goto_70
    move-object/from16 v2, p1

    const/4 v1, 0x0

    goto :goto_27

    .line 90
    :cond_74
    if-nez v10, :cond_79

    .line 91
    const-wide/16 v1, 0x0

    return-wide v1

    .line 94
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

    .line 99
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tendcloud/tenddata/game/cg$a;

    invoke-virtual {v8}, Lcom/tendcloud/tenddata/game/cg$a;->getRssi()B

    move-result v8

    add-int/2addr v11, v8

    .line 100
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ab

    .line 101
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_ab
    goto :goto_83

    .line 108
    :cond_ac
    invoke-virtual/range {p1 .. p1}, Lcom/tendcloud/tenddata/game/cg$c;->getBsslist()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/tendcloud/tenddata/game/cg$c;->getBsslist()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    sub-int/2addr v3, v4

    .line 109
    div-int/2addr v11, v3

    .line 111
    nop

    .line 112
    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cg;->f:Lcom/tendcloud/tenddata/game/cg$b;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/cg$b;->getRssiThreshold()I

    move-result v3

    int-to-double v4, v11

    const-wide v7, 0x3ff3333333333333L    # 1.2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v7

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 113
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

    check-cast v1, Lcom/tendcloud/tenddata/game/cg$a;

    .line 114
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cg$a;->getRssi()B

    move-result v1

    if-le v1, v3, :cond_f0

    .line 115
    add-double/2addr v8, v5

    .line 117
    :cond_f0
    goto :goto_db

    .line 119
    :cond_f1
    mul-int/lit8 v10, v10, 0x2

    int-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v8

    div-double/2addr v8, v1

    .line 121
    div-double/2addr v14, v12

    sget v1, Lcom/tendcloud/tenddata/game/cg;->e:I

    int-to-double v1, v1

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sub-double/2addr v5, v1

    mul-double v14, v14, v5

    return-wide v14
.end method

.method a(Lcom/tendcloud/tenddata/game/cg$c;Ljava/util/List;)D
    .registers 7

    .line 133
    nop

    .line 134
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v0, 0x0

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/cg$c;

    .line 135
    invoke-virtual {p0, v2, p1}, Lcom/tendcloud/tenddata/game/cg;->a(Lcom/tendcloud/tenddata/game/cg$c;Lcom/tendcloud/tenddata/game/cg$c;)D

    move-result-wide v2

    .line 136
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 138
    goto :goto_7

    .line 140
    :cond_1c
    return-wide v0
.end method

.method a(Ljava/util/List;Ljava/util/List;)D
    .registers 8

    .line 153
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_3d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3d

    .line 156
    :cond_f
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 157
    invoke-virtual {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/cg;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 159
    nop

    .line 160
    const/4 p1, 0x0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/cg$d;

    .line 162
    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cg$d;->fp1:Lcom/tendcloud/tenddata/game/cg$c;

    if-eqz v3, :cond_36

    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cg$d;->fp2:Lcom/tendcloud/tenddata/game/cg$c;

    if-eqz v3, :cond_36

    .line 163
    iget-wide v3, v0, Lcom/tendcloud/tenddata/game/cg$d;->score:D

    add-double/2addr v1, v3

    .line 164
    add-int/lit8 p1, p1, 0x1

    .line 167
    :cond_36
    goto :goto_1d

    .line 168
    :cond_37
    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, p1

    return-wide v1

    .line 154
    :cond_3d
    :goto_3d
    return-wide v1
.end method

.method a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)D
    .registers 9

    .line 248
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_65

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_65

    .line 253
    :cond_f
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 254
    invoke-virtual {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/cg;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 255
    nop

    .line 256
    const/4 p1, 0x0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/cg$d;

    .line 258
    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cg$d;->fp1:Lcom/tendcloud/tenddata/game/cg$c;

    if-eqz v3, :cond_42

    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cg$d;->fp2:Lcom/tendcloud/tenddata/game/cg$c;

    if-eqz v3, :cond_42

    .line 259
    iget-wide v3, v0, Lcom/tendcloud/tenddata/game/cg$d;->score:D

    add-double/2addr v1, v3

    .line 260
    add-int/lit8 p1, p1, 0x1

    .line 261
    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cg$d;->fp1:Lcom/tendcloud/tenddata/game/cg$c;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/cg$d;->fp2:Lcom/tendcloud/tenddata/game/cg$c;

    invoke-virtual {p0, v3, v0}, Lcom/tendcloud/tenddata/game/cg;->b(Lcom/tendcloud/tenddata/game/cg$c;Lcom/tendcloud/tenddata/game/cg$c;)Lcom/tendcloud/tenddata/game/cg$c;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 263
    :cond_42
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/cg;->f:Lcom/tendcloud/tenddata/game/cg$b;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/cg$b;->getMinFingerprints()I

    move-result v4

    if-ge v3, v4, :cond_5e

    .line 264
    iget-object v3, v0, Lcom/tendcloud/tenddata/game/cg$d;->fp1:Lcom/tendcloud/tenddata/game/cg$c;

    if-nez v3, :cond_55

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/cg$d;->fp2:Lcom/tendcloud/tenddata/game/cg$c;

    goto :goto_57

    :cond_55
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/cg$d;->fp1:Lcom/tendcloud/tenddata/game/cg$c;

    :goto_57
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cg$c;->cloneFingerprint()Lcom/tendcloud/tenddata/game/cg$c;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_5e
    :goto_5e
    goto :goto_1d

    .line 268
    :cond_5f
    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, p1

    return-wide v1

    .line 249
    :cond_65
    :goto_65
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    return-wide v1
.end method

.method b(II)D
    .registers 7

    .line 341
    if-gez p1, :cond_29

    if-ltz p2, :cond_5

    goto :goto_29

    .line 344
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-double p1, p1

    .line 346
    sget v0, Lcom/tendcloud/tenddata/game/cg;->d:I

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

    sget v0, Lcom/tendcloud/tenddata/game/cg;->c:I

    int-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    :goto_28
    return-wide p1

    .line 342
    :cond_29
    :goto_29
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method b(Lcom/tendcloud/tenddata/game/cg$c;Lcom/tendcloud/tenddata/game/cg$c;)Lcom/tendcloud/tenddata/game/cg$c;
    .registers 19

    .line 179
    move-object/from16 v7, p0

    const/4 v0, 0x0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/cg$c;->getBssmap(Z)Ljava/util/Map;

    move-result-object v8

    .line 180
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/cg$c;->getBssmap(Z)Ljava/util/Map;

    move-result-object v9

    .line 182
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 184
    new-instance v11, Lcom/tendcloud/tenddata/game/cg$c;

    invoke-direct {v11, v7}, Lcom/tendcloud/tenddata/game/cg$c;-><init>(Lcom/tendcloud/tenddata/game/cg;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Lcom/tendcloud/tenddata/game/cg$c;->getPoiId()J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/tendcloud/tenddata/game/cg$c;->setPoiId(J)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Lcom/tendcloud/tenddata/game/cg$c;->getTimestamp()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/tendcloud/tenddata/game/cg$c;->setTimestamp(I)V

    .line 187
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 188
    invoke-virtual {v11, v12}, Lcom/tendcloud/tenddata/game/cg$c;->setBsslist(Ljava/util/List;)V

    .line 190
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_37
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide v1, 0x3f1a36e2eb1c432dL    # 1.0E-4

    if-eqz v0, :cond_a0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/cg$a;

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/cg$a;

    .line 193
    if-nez v0, :cond_74

    .line 195
    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/cg$a;->getRssi()B

    move-result v0

    neg-int v0, v0

    int-to-double v4, v0

    .line 196
    :goto_60
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 197
    add-double/2addr v4, v1

    goto :goto_60

    .line 199
    :cond_6c
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v10, v0, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    goto :goto_9f

    .line 203
    :cond_74
    new-instance v14, Lcom/tendcloud/tenddata/game/cg$a;

    .line 204
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cg$a;->getSsid()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cg$a;->getBssid()Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cg$a;->getRssi()B

    move-result v1

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/cg$a;->getRssi()B

    move-result v3

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-byte v5, v1

    .line 207
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cg$a;->getBand()B

    move-result v6

    .line 208
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cg$a;->getChannel()B

    move-result v15

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/cg$a;-><init>(Lcom/tendcloud/tenddata/game/cg;Ljava/lang/String;Ljava/lang/String;BBB)V

    .line 209
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :goto_9f
    goto :goto_37

    .line 213
    :cond_a0
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e1

    .line 215
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tendcloud/tenddata/game/cg$a;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/cg$a;->getRssi()B

    move-result v4

    neg-int v4, v4

    int-to-double v4, v4

    .line 216
    :goto_ca
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 217
    add-double/2addr v4, v1

    goto :goto_ca

    .line 219
    :cond_d6
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v10, v4, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_e1
    goto :goto_a8

    .line 226
    :cond_e2
    invoke-interface {v10}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ea
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_120

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    neg-double v2, v2

    double-to-int v2, v2

    int-to-byte v2, v2

    .line 228
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v7, Lcom/tendcloud/tenddata/game/cg;->f:Lcom/tendcloud/tenddata/game/cg$b;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/cg$b;->getMaxBssEntries()I

    move-result v4

    if-ge v3, v4, :cond_120

    iget-object v3, v7, Lcom/tendcloud/tenddata/game/cg;->f:Lcom/tendcloud/tenddata/game/cg$b;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/cg$b;->getRssiThreshold()I

    move-result v3

    if-ge v2, v3, :cond_118

    .line 229
    goto :goto_120

    .line 231
    :cond_118
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    goto :goto_ea

    .line 233
    :cond_120
    :goto_120
    return-object v11
.end method

.method b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 16

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 302
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/cg$c;

    .line 304
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_23
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/tendcloud/tenddata/game/cg$c;

    .line 305
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {p0, v3, v7}, Lcom/tendcloud/tenddata/game/cg;->a(Lcom/tendcloud/tenddata/game/cg$c;Lcom/tendcloud/tenddata/game/cg$c;)D

    move-result-wide v8

    .line 307
    new-instance v11, Lcom/tendcloud/tenddata/game/cg$d;

    move-object v4, v11

    move-object v5, p0

    move-object v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/tendcloud/tenddata/game/cg$d;-><init>(Lcom/tendcloud/tenddata/game/cg;Lcom/tendcloud/tenddata/game/cg$c;Lcom/tendcloud/tenddata/game/cg$c;D)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    goto :goto_23

    .line 309
    :cond_43
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    goto :goto_13

    .line 311
    :cond_47
    new-instance p1, Lcom/tendcloud/tenddata/game/ch;

    invoke-direct {p1, p0}, Lcom/tendcloud/tenddata/game/ch;-><init>(Lcom/tendcloud/tenddata/game/cg;)V

    .line 321
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 323
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 324
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_56
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tendcloud/tenddata/game/cg$d;

    .line 325
    iget-object v0, p2, Lcom/tendcloud/tenddata/game/cg$d;->fp1:Lcom/tendcloud/tenddata/game/cg$c;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p2, Lcom/tendcloud/tenddata/game/cg$d;->fp2:Lcom/tendcloud/tenddata/game/cg$c;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 326
    iget-object v0, p2, Lcom/tendcloud/tenddata/game/cg$d;->fp1:Lcom/tendcloud/tenddata/game/cg$c;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p2, Lcom/tendcloud/tenddata/game/cg$d;->fp2:Lcom/tendcloud/tenddata/game/cg$c;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 328
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_7f
    goto :goto_56

    .line 331
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

    check-cast v5, Lcom/tendcloud/tenddata/game/cg$c;

    .line 332
    new-instance p2, Lcom/tendcloud/tenddata/game/cg$d;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/tendcloud/tenddata/game/cg$d;-><init>(Lcom/tendcloud/tenddata/game/cg;Lcom/tendcloud/tenddata/game/cg$c;Lcom/tendcloud/tenddata/game/cg$c;D)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    goto :goto_84

    .line 334
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

    check-cast v3, Lcom/tendcloud/tenddata/game/cg$c;

    .line 335
    new-instance p2, Lcom/tendcloud/tenddata/game/cg$d;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/cg$d;-><init>(Lcom/tendcloud/tenddata/game/cg;Lcom/tendcloud/tenddata/game/cg$c;Lcom/tendcloud/tenddata/game/cg$c;D)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    goto :goto_a3

    .line 337
    :cond_be
    return-void
.end method
