.class public final Lcom/efs/sdk/base/a/g/a/f;
.super Lcom/efs/sdk/base/a/g/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .registers 9

    .line 20
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v0

    .line 1164
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 20
    nop

    .line 2145
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 3123
    iget-object v2, v0, Lcom/efs/sdk/base/a/c/a/b;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    if-eqz v2, :cond_24

    .line 3124
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a/b;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 3125
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_25

    .line 3127
    :cond_24
    move-wide v0, v3

    .line 2145
    :goto_25
    nop

    .line 2148
    sget-object v2, Lcom/efs/sdk/base/a/c/a/c;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double v5, v5, v3

    .line 2151
    cmpg-double v2, v5, v0

    if-gtz v2, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    .line 20
    :goto_35
    if-nez v0, :cond_38

    .line 21
    return-void

    .line 23
    :cond_38
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/f;->b(Lcom/efs/sdk/base/a/f/b;)V

    .line 24
    return-void
.end method
