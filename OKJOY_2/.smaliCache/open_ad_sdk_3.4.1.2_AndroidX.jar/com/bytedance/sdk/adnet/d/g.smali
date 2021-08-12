.class public Lcom/bytedance/sdk/adnet/d/g;
.super Ljava/lang/Object;
.source "UrlBuilder.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/util/Map;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/d/g;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/util/Map;

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/d/g;->b:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 152
    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    :try_start_3
    const-string p2, "ISO-8859-1"

    :goto_5
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_9} :catch_a

    return-object p1

    .line 153
    :catch_a
    move-exception p1

    .line 154
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/g;->b:Ljava/lang/String;

    return-object v0

    .line 104
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/util/Map;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/adnet/d/g;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/d/g;->b:Ljava/lang/String;

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4f

    .line 106
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/d/g;->b:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 107
    if-ltz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/d/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    goto :goto_42

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/d/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    :goto_42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_4f
    return-object v0
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 122
    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_18

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 126
    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/bytedance/sdk/adnet/d/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 129
    if-eqz v1, :cond_6d

    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 132
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 136
    if-eqz v3, :cond_4d

    invoke-direct {p0, v3, p2}, Lcom/bytedance/sdk/adnet/d/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4f

    :cond_4d
    const-string v3, ""

    .line 137
    :goto_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5a

    .line 138
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6b

    .line 143
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_6b
    goto :goto_3a

    .line 147
    :cond_6c
    goto :goto_d

    .line 129
    :cond_6d
    goto :goto_d
.end method

.method public a(Ljava/lang/String;D)V
    .registers 5

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 55
    if-nez v0, :cond_f

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 59
    :cond_f
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p2, p0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 35
    if-nez v0, :cond_f

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 39
    :cond_f
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p2, p0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 65
    if-nez v0, :cond_f

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 69
    :cond_f
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p2, p0, Lcom/bytedance/sdk/adnet/d/g;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 159
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/d/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
