.class public final Lcom/mintegral/msdk/MIntegralUser$a;
.super Ljava/lang/Object;
.source "MIntegralUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/MIntegralUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide v0, -0x3f70c00000000000L    # -1000.0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-wide v0, p0, Lcom/mintegral/msdk/MIntegralUser$a;->a:D

    .line 107
    iput-wide v0, p0, Lcom/mintegral/msdk/MIntegralUser$a;->b:D

    return-void
.end method


# virtual methods
.method public final a()D
    .registers 3

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/mintegral/msdk/MIntegralUser$a;->a:D

    return-wide v0
.end method

.method public final a(D)V
    .registers 4

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/mintegral/msdk/MIntegralUser$a;->a:D

    .line 115
    return-void
.end method

.method public final b()D
    .registers 3

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/mintegral/msdk/MIntegralUser$a;->b:D

    return-wide v0
.end method

.method public final b(D)V
    .registers 4

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/mintegral/msdk/MIntegralUser$a;->b:D

    .line 123
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    if-ne p0, p1, :cond_5

    .line 133
    :cond_4
    :goto_4
    return v0

    .line 128
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    .line 130
    :cond_13
    check-cast p1, Lcom/mintegral/msdk/MIntegralUser$a;

    .line 132
    iget-wide v2, p1, Lcom/mintegral/msdk/MIntegralUser$a;->a:D

    iget-wide v4, p0, Lcom/mintegral/msdk/MIntegralUser$a;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_21

    move v0, v1

    goto :goto_4

    .line 133
    :cond_21
    iget-wide v2, p1, Lcom/mintegral/msdk/MIntegralUser$a;->b:D

    iget-wide v4, p0, Lcom/mintegral/msdk/MIntegralUser$a;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 7

    .prologue
    const/16 v4, 0x20

    .line 140
    iget-wide v0, p0, Lcom/mintegral/msdk/MIntegralUser$a;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 141
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 142
    iget-wide v2, p0, Lcom/mintegral/msdk/MIntegralUser$a;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 144
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPS{lat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mintegral/msdk/MIntegralUser$a;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mintegral/msdk/MIntegralUser$a;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
