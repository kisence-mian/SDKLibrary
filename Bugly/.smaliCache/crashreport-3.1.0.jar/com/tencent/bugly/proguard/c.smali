.class public Lcom/tencent/bugly/proguard/c;
.super Lcom/tencent/bugly/proguard/a;
.source "BUGLY"


# instance fields
.field protected d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/bugly/proguard/i;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/a;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    .line 23
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)V
    .registers 2

    .line 13
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_40

    .line 80
    if-eqz p1, :cond_38

    .line 83
    if-eqz p2, :cond_30

    .line 86
    instance-of v0, p2, Ljava/util/Set;

    if-nez v0, :cond_28

    .line 89
    new-instance v0, Lcom/tencent/bugly/proguard/j;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/Object;I)V

    .line 92
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/j;->a()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p2

    .line 93
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void

    .line 87
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can not support Set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "put value can not is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "put key can not is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_40
    invoke-super {p0, p1, p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public a([B)V
    .registers 5

    .line 400
    :try_start_0
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/a;->a([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 401
    return-void

    .line 402
    :catch_4
    move-exception v0

    .line 403
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/i;->a([B)V

    .line 404
    iget-object p1, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 405
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 406
    const/4 v0, 0x0

    new-array v1, v0, [B

    const-string v2, ""

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    invoke-virtual {v1, p1, v0, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    .line 409
    return-void
.end method

.method public a()[B
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_1d

    .line 366
    new-instance v0, Lcom/tencent/bugly/proguard/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/j;-><init>(I)V

    .line 367
    iget-object v2, p0, Lcom/tencent/bugly/proguard/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;)I

    .line 368
    iget-object v2, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    .line 369
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/j;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/l;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0

    .line 371
    :cond_1d
    invoke-super {p0}, Lcom/tencent/bugly/proguard/a;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/bugly/proguard/b;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_46

    .line 139
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 140
    return-object v2

    .line 141
    :cond_e
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 142
    iget-object p2, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 144
    :cond_1d
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 146
    :try_start_25
    iget-object v2, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/i;->a([B)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    invoke-virtual {v0, p2, v3, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p2

    .line 147
    if-eqz p2, :cond_3e

    .line 148
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3e} :catch_3f

    .line 150
    :cond_3e
    return-object p2

    .line 151
    :catch_3f
    move-exception p1

    .line 152
    new-instance p2, Lcom/tencent/bugly/proguard/b;

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 156
    :cond_46
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 157
    return-object v2

    .line 158
    :cond_4f
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 159
    iget-object p2, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 161
    :cond_5e
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 162
    new-array v2, v3, [B

    .line 164
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [B

    .line 167
    :cond_86
    :try_start_86
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/i;->a([B)V

    .line 171
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    invoke-virtual {v0, p2, v3, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p2

    .line 173
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9d} :catch_9e

    .line 174
    return-object p2

    .line 175
    :catch_9e
    move-exception p1

    .line 176
    new-instance p2, Lcom/tencent/bugly/proguard/b;

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public c()V
    .registers 2

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    .line 31
    return-void
.end method
