.class public final Lcom/bytedance/sdk/openadsdk/preload/a/q;
.super Lcom/bytedance/sdk/openadsdk/preload/a/l;
.source "JsonPrimitive.java"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/preload/a/q;)Z
    .registers 3

    .line 288
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 289
    check-cast p0, Ljava/lang/Number;

    .line 290
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_1d

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1d

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1d

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1d

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1

    .line 293
    :cond_1f
    return v1
.end method


# virtual methods
.method public a()Ljava/lang/Number;
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :cond_10
    check-cast v0, Ljava/lang/Number;

    :goto_12
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 144
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->o()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 145
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->n()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()D
    .registers 3

    .line 161
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->o()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_17
    return-wide v0
.end method

.method public d()J
    .registers 3

    .line 206
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->o()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_17
    return-wide v0
.end method

.method public e()I
    .registers 2

    .line 228
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->o()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_17
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 260
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 261
    return v0

    .line 263
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_78

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_78

    .line 266
    :cond_12
    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    .line 267
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    if-nez v2, :cond_1f

    .line 268
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    return v0

    .line 270
    :cond_1f
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a(Lcom/bytedance/sdk/openadsdk/preload/a/q;)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a(Lcom/bytedance/sdk/openadsdk/preload/a/q;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 271
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    :goto_41
    return v0

    .line 273
    :cond_42
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_71

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_71

    .line 274
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 277
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 278
    cmpl-double p1, v2, v4

    if-eqz p1, :cond_70

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6f

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6f

    goto :goto_70

    :cond_6f
    move v0, v1

    :cond_70
    :goto_70
    return v0

    .line 280
    :cond_71
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 264
    :cond_78
    :goto_78
    return v1
.end method

.method public f()Z
    .registers 2

    .line 101
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->n()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 105
    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    if-nez v0, :cond_7

    .line 244
    const/16 v0, 0x1f

    return v0

    .line 247
    :cond_7
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a(Lcom/bytedance/sdk/openadsdk/preload/a/q;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1c

    .line 248
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 249
    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 251
    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_33

    .line 252
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 253
    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 255
    :cond_33
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public n()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public o()Z
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public p()Z
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method
