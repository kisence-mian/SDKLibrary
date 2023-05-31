.class public abstract Lcom/bytedance/sdk/openadsdk/i/c;
.super Ljava/lang/Object;
.source "TTRunnable.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/bytedance/sdk/openadsdk/i/c;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/c;->a:I

    .line 21
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/c;->a:I

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/c;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/c;->a:I

    .line 16
    if-eq p1, v0, :cond_34

    :goto_8
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/i/c;->a:I

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/c;->b:Ljava/lang/String;

    .line 18
    return-void

    .line 16
    :cond_34
    const/4 p1, 0x5

    goto :goto_8
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/i/c;->a:I

    return v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/i/c;)I
    .registers 4

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/c;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/c;->a()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 44
    const/4 v0, 0x1

    .line 49
    :goto_b
    return v0

    .line 46
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/c;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/c;->a()I

    move-result v1

    if-le v0, v1, :cond_18

    .line 47
    const/4 v0, -0x1

    goto :goto_b

    .line 49
    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 10
    check-cast p1, Lcom/bytedance/sdk/openadsdk/i/c;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/c;->a(Lcom/bytedance/sdk/openadsdk/i/c;)I

    move-result v0

    return v0
.end method
