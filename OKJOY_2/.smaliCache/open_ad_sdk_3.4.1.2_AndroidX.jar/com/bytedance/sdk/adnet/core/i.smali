.class public Lcom/bytedance/sdk/adnet/core/i;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:J


# direct methods
.method private constructor <init>(I[BLjava/util/Map;Ljava/util/List;ZJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;ZJ)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lcom/bytedance/sdk/adnet/core/i;->a:I

    .line 131
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/i;->b:[B

    .line 132
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/core/i;->c:Ljava/util/Map;

    .line 133
    if-nez p4, :cond_f

    .line 134
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/i;->d:Ljava/util/List;

    goto :goto_15

    .line 136
    :cond_f
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/i;->d:Ljava/util/List;

    .line 138
    :goto_15
    iput-boolean p5, p0, Lcom/bytedance/sdk/adnet/core/i;->e:Z

    .line 139
    iput-wide p6, p0, Lcom/bytedance/sdk/adnet/core/i;->f:J

    .line 140
    return-void
.end method

.method public constructor <init>(I[BLjava/util/Map;ZJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-static {p3}, Lcom/bytedance/sdk/adnet/core/i;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/adnet/core/i;-><init>(I[BLjava/util/Map;Ljava/util/List;ZJ)V

    .line 53
    return-void
.end method

.method public constructor <init>(I[BZJLjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BZJ",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-static {p6}, Lcom/bytedance/sdk/adnet/core/i;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p6

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/adnet/core/i;-><init>(I[BLjava/util/Map;Ljava/util/List;ZJ)V

    .line 71
    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    const/16 v1, 0xc8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/adnet/core/i;-><init>(I[BLjava/util/Map;ZJ)V

    .line 121
    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .line 194
    if-nez p0, :cond_4

    .line 195
    const/4 p0, 0x0

    return-object p0

    .line 197
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 200
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 202
    new-instance v2, Lcom/bytedance/sdk/adnet/core/Header;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/bytedance/sdk/adnet/core/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    goto :goto_20

    .line 204
    :cond_41
    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    if-nez p0, :cond_4

    .line 180
    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 185
    :cond_f
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 187
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/core/Header;

    .line 188
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    goto :goto_1a

    .line 190
    :cond_32
    return-object v0
.end method
