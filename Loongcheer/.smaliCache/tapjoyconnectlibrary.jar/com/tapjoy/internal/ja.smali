.class final Lcom/tapjoy/internal/ja;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lcom/tapjoy/internal/ja;

.field g:Lcom/tapjoy/internal/ja;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tapjoy/internal/ja;->a:[B

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/ja;->e:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/ja;->d:Z

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/ja;)V
    .registers 5

    .line 67
    iget-object v0, p1, Lcom/tapjoy/internal/ja;->a:[B

    iget v1, p1, Lcom/tapjoy/internal/ja;->b:I

    iget v2, p1, Lcom/tapjoy/internal/ja;->c:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tapjoy/internal/ja;-><init>([BII)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tapjoy/internal/ja;->d:Z

    .line 69
    return-void
.end method

.method constructor <init>([BII)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/tapjoy/internal/ja;->a:[B

    .line 73
    iput p2, p0, Lcom/tapjoy/internal/ja;->b:I

    .line 74
    iput p3, p0, Lcom/tapjoy/internal/ja;->c:I

    .line 75
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/internal/ja;->e:Z

    .line 76
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/internal/ja;->d:Z

    .line 77
    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/ja;
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_7

    move-object v2, v0

    goto :goto_8

    :cond_7
    move-object v2, v1

    .line 85
    :goto_8
    iget-object v3, p0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    iput-object v0, v3, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    .line 86
    iget-object v0, p0, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    iput-object v3, v0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    .line 87
    iput-object v1, p0, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    .line 88
    iput-object v1, p0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    .line 89
    return-object v2
.end method

.method public final a(Lcom/tapjoy/internal/ja;)Lcom/tapjoy/internal/ja;
    .registers 3

    .line 97
    iput-object p0, p1, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    iput-object v0, p1, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    .line 99
    iget-object v0, p0, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    iput-object p1, v0, Lcom/tapjoy/internal/ja;->g:Lcom/tapjoy/internal/ja;

    .line 100
    iput-object p1, p0, Lcom/tapjoy/internal/ja;->f:Lcom/tapjoy/internal/ja;

    .line 101
    return-object p1
.end method

.method public final a(Lcom/tapjoy/internal/ja;I)V
    .registers 7

    .line 151
    iget-boolean v0, p1, Lcom/tapjoy/internal/ja;->e:Z

    if-eqz v0, :cond_4a

    .line 152
    iget v0, p1, Lcom/tapjoy/internal/ja;->c:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_34

    .line 154
    iget-boolean v1, p1, Lcom/tapjoy/internal/ja;->d:Z

    if-nez v1, :cond_2e

    .line 155
    add-int v1, v0, p2

    iget v3, p1, Lcom/tapjoy/internal/ja;->b:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_28

    .line 156
    iget-object v1, p1, Lcom/tapjoy/internal/ja;->a:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget v0, p1, Lcom/tapjoy/internal/ja;->c:I

    iget v1, p1, Lcom/tapjoy/internal/ja;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/tapjoy/internal/ja;->c:I

    .line 158
    iput v2, p1, Lcom/tapjoy/internal/ja;->b:I

    goto :goto_34

    .line 155
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 154
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 161
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/tapjoy/internal/ja;->a:[B

    iget v1, p0, Lcom/tapjoy/internal/ja;->b:I

    iget-object v2, p1, Lcom/tapjoy/internal/ja;->a:[B

    iget v3, p1, Lcom/tapjoy/internal/ja;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget v0, p1, Lcom/tapjoy/internal/ja;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/tapjoy/internal/ja;->c:I

    .line 163
    iget p1, p0, Lcom/tapjoy/internal/ja;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/tapjoy/internal/ja;->b:I

    .line 164
    return-void

    .line 151
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
