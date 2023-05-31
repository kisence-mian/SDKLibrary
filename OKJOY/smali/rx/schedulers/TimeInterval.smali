.class public Lrx/schedulers/TimeInterval;
.super Ljava/lang/Object;
.source "TimeInterval.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final intervalInMilliseconds:J

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .registers 5
    .param p1, "intervalInMilliseconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p3, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    .line 40
    iput-wide p1, p0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    if-ne p0, p1, :cond_5

    .line 95
    :cond_4
    :goto_4
    return v1

    .line 78
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 79
    goto :goto_4

    .line 81
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 82
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 84
    check-cast v0, Lrx/schedulers/TimeInterval;

    .line 85
    .local v0, "other":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<*>;"
    iget-wide v4, p0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    iget-wide v6, v0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_22

    move v1, v2

    .line 86
    goto :goto_4

    .line 88
    :cond_22
    iget-object v3, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    if-nez v3, :cond_2c

    .line 89
    iget-object v3, v0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    if-eqz v3, :cond_4

    move v1, v2

    .line 90
    goto :goto_4

    .line 92
    :cond_2c
    iget-object v3, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    iget-object v4, v0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 93
    goto :goto_4
.end method

.method public getIntervalInMilliseconds()J
    .registers 3

    .prologue
    .line 49
    .local p0, "this":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<TT;>;"
    iget-wide v0, p0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<TT;>;"
    iget-object v0, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 64
    .local p0, "this":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<TT;>;"
    const/16 v0, 0x1f

    .line 65
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 66
    .local v1, "result":I
    iget-wide v2, p0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    iget-wide v4, p0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 69
    mul-int v3, v0, v1

    iget-object v2, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    if-nez v2, :cond_18

    const/4 v2, 0x0

    :goto_15
    add-int v1, v3, v2

    .line 70
    return v1

    .line 69
    :cond_18
    iget-object v2, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 100
    .local p0, "this":Lrx/schedulers/TimeInterval;, "Lrx/schedulers/TimeInterval<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeInterval [intervalInMilliseconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lrx/schedulers/TimeInterval;->intervalInMilliseconds:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/schedulers/TimeInterval;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
