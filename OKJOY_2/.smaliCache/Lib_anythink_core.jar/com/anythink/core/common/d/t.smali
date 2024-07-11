.class public final Lcom/anythink/core/common/d/t;
.super Lcom/anythink/core/common/d/u;


# static fields
.field public static final A:I = 0x1

.field public static final B:I = 0x2


# instance fields
.field C:I

.field D:J

.field E:J

.field z:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/anythink/core/common/d/u;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/anythink/core/common/d/t;->z:I

    return v0
.end method

.method public final a(J)V
    .registers 3

    .line 34
    iput-wide p1, p0, Lcom/anythink/core/common/d/t;->D:J

    .line 35
    return-void
.end method

.method public final b()I
    .registers 2

    .line 59
    const/4 v0, 0x3

    return v0
.end method

.method public final b(J)V
    .registers 3

    .line 38
    iput-wide p1, p0, Lcom/anythink/core/common/d/t;->E:J

    .line 39
    return-void
.end method

.method public final e(I)V
    .registers 2

    .line 46
    iput p1, p0, Lcom/anythink/core/common/d/t;->z:I

    .line 47
    return-void
.end method

.method public final f(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/anythink/core/common/d/t;->C:I

    .line 55
    return-void
.end method

.method public final v()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/anythink/core/common/d/t;->C:I

    return v0
.end method

.method public final w()Z
    .registers 5

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/common/d/t;->E:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/anythink/core/common/d/t;->D:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_f
    const/4 v0, 0x0

    return v0
.end method
