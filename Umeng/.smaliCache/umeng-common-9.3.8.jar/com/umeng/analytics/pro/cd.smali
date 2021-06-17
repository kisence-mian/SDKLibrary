.class public abstract Lcom/umeng/analytics/pro/cd;
.super Ljava/lang/Object;
.source "TTransport.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation
.end method

.method public a(I)V
    .registers 2

    .line 160
    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation
.end method

.method public b([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation

    .line 105
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/analytics/pro/cd;->b([BII)V

    .line 106
    return-void
.end method

.method public abstract b([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation
.end method

.method public abstract c()V
.end method

.method public d([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation

    .line 81
    nop

    .line 82
    const/4 v0, 0x0

    .line 83
    :goto_2
    if-ge v0, p3, :cond_39

    .line 84
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/umeng/analytics/pro/cd;->a([BII)I

    move-result v1

    .line 85
    if-lez v1, :cond_10

    .line 93
    add-int/2addr v0, v1

    goto :goto_2

    .line 86
    :cond_10
    new-instance p1, Lcom/umeng/analytics/pro/ce;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot read. Remote side has closed. Tried to read "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes, but only got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/ce;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_39
    return v0
.end method

.method public d()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public f()[B
    .registers 2

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .registers 2

    .line 153
    const/4 v0, -0x1

    return v0
.end method

.method public i()Z
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cd;->a()Z

    move-result v0

    return v0
.end method
