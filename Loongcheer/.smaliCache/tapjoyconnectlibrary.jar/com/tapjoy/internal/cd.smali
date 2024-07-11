.class public final Lcom/tapjoy/internal/cd;
.super Ljava/lang/Number;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/tapjoy/internal/cd;->a:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final doubleValue()D
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/tapjoy/internal/cd;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 16
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 17
    return v0

    .line 18
    :cond_4
    instance-of v1, p1, Ljava/lang/Number;

    const/4 v2, 0x0

    if-eqz v1, :cond_5d

    .line 19
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    .line 20
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1c

    .line 21
    invoke-virtual {p0}, Lcom/tapjoy/internal/cd;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v3, v1, :cond_1b

    return v0

    :cond_1b
    return v2

    .line 22
    :cond_1c
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_2e

    .line 23
    invoke-virtual {p0}, Lcom/tapjoy/internal/cd;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2d

    return v0

    :cond_2d
    return v2

    .line 24
    :cond_2e
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_40

    .line 25
    invoke-virtual {p0}, Lcom/tapjoy/internal/cd;->floatValue()F

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpl-float v1, v3, v1

    if-nez v1, :cond_3f

    return v0

    :cond_3f
    return v2

    .line 26
    :cond_40
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_52

    .line 27
    invoke-virtual {p0}, Lcom/tapjoy/internal/cd;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_51

    return v0

    :cond_51
    return v2

    .line 29
    :cond_52
    iget-object v0, p0, Lcom/tapjoy/internal/cd;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 32
    :cond_5d
    return v2
.end method

.method public final floatValue()F
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/tapjoy/internal/cd;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final intValue()I
    .registers 3

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/cd;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 39
    :catch_7
    move-exception v0

    .line 41
    :try_start_8
    iget-object v0, p0, Lcom/tapjoy/internal/cd;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_e} :catch_10

    long-to-int v1, v0

    return v1

    .line 42
    :catch_10
    move-exception v0

    .line 43
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/tapjoy/internal/cd;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public final longValue()J
    .registers 3

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/cd;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 52
    :catch_7
    move-exception v0

    .line 53
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/tapjoy/internal/cd;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/tapjoy/internal/cd;->a:Ljava/lang/String;

    return-object v0
.end method
