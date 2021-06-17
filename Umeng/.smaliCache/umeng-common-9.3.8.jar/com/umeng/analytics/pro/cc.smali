.class public final Lcom/umeng/analytics/pro/cc;
.super Lcom/umeng/analytics/pro/cd;
.source "TMemoryInputTransport.java"


# instance fields
.field private a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cd;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cd;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/cc;->a([B)V

    .line 32
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4

    .line 34
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cd;-><init>()V

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/cc;->c([BII)V

    .line 36
    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cc;->h()I

    move-result v0

    .line 66
    if-le p3, v0, :cond_7

    move p3, v0

    .line 67
    :cond_7
    if-lez p3, :cond_13

    .line 68
    iget-object v0, p0, Lcom/umeng/analytics/pro/cc;->a:[B

    iget v1, p0, Lcom/umeng/analytics/pro/cc;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    invoke-virtual {p0, p3}, Lcom/umeng/analytics/pro/cc;->a(I)V

    .line 71
    :cond_13
    return p3
.end method

.method public a(I)V
    .registers 3

    .line 93
    iget v0, p0, Lcom/umeng/analytics/pro/cc;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/umeng/analytics/pro/cc;->b:I

    .line 94
    return-void
.end method

.method public a([B)V
    .registers 4

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/analytics/pro/cc;->c([BII)V

    .line 40
    return-void
.end method

.method public a()Z
    .registers 2

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public b([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ce;
        }
    .end annotation

    .line 76
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No writing allowed!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .registers 1

    .line 53
    return-void
.end method

.method public c([BII)V
    .registers 4

    .line 43
    iput-object p1, p0, Lcom/umeng/analytics/pro/cc;->a:[B

    .line 44
    iput p2, p0, Lcom/umeng/analytics/pro/cc;->b:I

    .line 45
    add-int/2addr p2, p3

    iput p2, p0, Lcom/umeng/analytics/pro/cc;->c:I

    .line 46
    return-void
.end method

.method public e()V
    .registers 2

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/cc;->a:[B

    .line 50
    return-void
.end method

.method public f()[B
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/umeng/analytics/pro/cc;->a:[B

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/umeng/analytics/pro/cc;->b:I

    return v0
.end method

.method public h()I
    .registers 3

    .line 89
    iget v0, p0, Lcom/umeng/analytics/pro/cc;->c:I

    iget v1, p0, Lcom/umeng/analytics/pro/cc;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
