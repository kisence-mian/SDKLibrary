.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/g;
.super Ljava/lang/Number;
.source "LazilyParsedNumber.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;->a:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public doubleValue()D
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 87
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 88
    return v0

    .line 90
    :cond_4
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 91
    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;

    .line 92
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;->a:Ljava/lang/String;

    if-eq v1, p1, :cond_19

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v2

    :cond_19
    :goto_19
    return v0

    .line 94
    :cond_1a
    return v2
.end method

.method public floatValue()F
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 3

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 38
    :catch_7
    move-exception v0

    .line 40
    :try_start_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_e} :catch_10

    long-to-int v0, v0

    return v0

    .line 41
    :catch_10
    move-exception v0

    .line 42
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 51
    :catch_7
    move-exception v0

    .line 52
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;->a:Ljava/lang/String;

    return-object v0
.end method
