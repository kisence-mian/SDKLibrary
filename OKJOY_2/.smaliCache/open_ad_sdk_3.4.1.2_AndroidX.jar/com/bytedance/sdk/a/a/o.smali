.class final Lcom/bytedance/sdk/a/a/o;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lcom/bytedance/sdk/a/a/o;

.field g:Lcom/bytedance/sdk/a/a/o;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/a/o;->e:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/a/o;->d:Z

    .line 81
    return-void
.end method

.method constructor <init>([BIIZZ)V
    .registers 6

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/o;->a:[B

    .line 85
    iput p2, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 86
    iput p3, p0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 87
    iput-boolean p4, p0, Lcom/bytedance/sdk/a/a/o;->d:Z

    .line 88
    iput-boolean p5, p0, Lcom/bytedance/sdk/a/a/o;->e:Z

    .line 89
    return-void
.end method


# virtual methods
.method final a()Lcom/bytedance/sdk/a/a/o;
    .registers 8

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/a/o;->d:Z

    .line 98
    new-instance v0, Lcom/bytedance/sdk/a/a/o;

    iget-object v2, p0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v3, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget v4, p0, Lcom/bytedance/sdk/a/a/o;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/a/a/o;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final a(I)Lcom/bytedance/sdk/a/a/o;
    .registers 7

    .line 142
    if-lez p1, :cond_30

    iget v0, p0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_30

    .line 150
    const/16 v0, 0x400

    if-lt p1, v0, :cond_12

    .line 151
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/o;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    goto :goto_20

    .line 153
    :cond_12
    invoke-static {}, Lcom/bytedance/sdk/a/a/p;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v2, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget-object v3, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    :goto_20
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 158
    iget v1, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 159
    iget-object p1, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;

    .line 160
    return-object v0

    .line 142
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;
    .registers 3

    .line 126
    iput-object p0, p1, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    iput-object v0, p1, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    iput-object p1, v0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 129
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 130
    return-object p1
.end method

.method public final a(Lcom/bytedance/sdk/a/a/o;I)V
    .registers 7

    .line 182
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/a/o;->e:Z

    if-eqz v0, :cond_4a

    .line 183
    iget v0, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_34

    .line 185
    iget-boolean v1, p1, Lcom/bytedance/sdk/a/a/o;->d:Z

    if-nez v1, :cond_2e

    .line 186
    add-int v1, v0, p2

    iget v3, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_28

    .line 187
    iget-object v1, p1, Lcom/bytedance/sdk/a/a/o;->a:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iget v0, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v1, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 189
    iput v2, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    goto :goto_34

    .line 186
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 185
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 192
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v1, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget-object v2, p1, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v3, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget v0, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 194
    iget p1, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 195
    return-void

    .line 182
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final b()Lcom/bytedance/sdk/a/a/o;
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_7

    move-object v2, v0

    goto :goto_8

    :cond_7
    move-object v2, v1

    .line 114
    :goto_8
    iget-object v3, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iput-object v0, v3, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    iput-object v3, v0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 116
    iput-object v1, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 117
    iput-object v1, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 118
    return-object v2
.end method

.method public final c()V
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    if-eq v0, p0, :cond_28

    .line 169
    iget-boolean v1, v0, Lcom/bytedance/sdk/a/a/o;->e:Z

    if-nez v1, :cond_9

    return-void

    .line 170
    :cond_9
    iget v1, p0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v2, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v1, v2

    .line 171
    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    rsub-int v2, v2, 0x2000

    iget-boolean v3, v0, Lcom/bytedance/sdk/a/a/o;->d:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_1a

    :cond_18
    iget v3, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    :goto_1a
    add-int/2addr v2, v3

    .line 172
    if-le v1, v2, :cond_1e

    return-void

    .line 173
    :cond_1e
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;I)V

    .line 174
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    .line 175
    invoke-static {p0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    .line 176
    return-void

    .line 168
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
