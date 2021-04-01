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

    .prologue
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

    .prologue
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
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 97
    iput-boolean v4, p0, Lcom/bytedance/sdk/a/a/o;->d:Z

    .line 98
    new-instance v0, Lcom/bytedance/sdk/a/a/o;

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v2, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget v3, p0, Lcom/bytedance/sdk/a/a/o;->c:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/a/o;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final a(I)Lcom/bytedance/sdk/a/a/o;
    .registers 7

    .prologue
    .line 142
    if-lez p1, :cond_9

    iget v0, p0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_f

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 150
    :cond_f
    const/16 v0, 0x400

    if-lt p1, v0, :cond_27

    .line 151
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/o;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    .line 157
    :goto_17
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 158
    iget v1, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 159
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;

    .line 160
    return-object v0

    .line 153
    :cond_27
    invoke-static {}, Lcom/bytedance/sdk/a/a/p;->a()Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v2, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    iget-object v3, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_17
.end method

.method public final a(Lcom/bytedance/sdk/a/a/o;)Lcom/bytedance/sdk/a/a/o;
    .registers 3

    .prologue
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
    .registers 9

    .prologue
    const/16 v2, 0x2000

    const/4 v5, 0x0

    .line 182
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/a/o;->e:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 183
    :cond_d
    iget v0, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_41

    .line 185
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/a/o;->d:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 186
    :cond_1c
    iget v0, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr v0, p2

    iget v1, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 187
    :cond_2a
    iget-object v0, p1, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v1, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    iget-object v2, p1, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v3, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v4, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iget v0, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v1, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 189
    iput v5, p1, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 192
    :cond_41
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
    iget v0, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    .line 195
    return-void
.end method

.method public final b()Lcom/bytedance/sdk/a/a/o;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    if-eq v0, p0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 114
    :goto_7
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iget-object v3, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    iput-object v3, v2, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 115
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    iget-object v3, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iput-object v3, v2, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 116
    iput-object v1, p0, Lcom/bytedance/sdk/a/a/o;->f:Lcom/bytedance/sdk/a/a/o;

    .line 117
    iput-object v1, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    .line 118
    return-object v0

    :cond_18
    move-object v0, v1

    .line 113
    goto :goto_7
.end method

.method public final c()V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    if-ne v0, p0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 169
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/a/o;->e:Z

    if-nez v0, :cond_11

    .line 176
    :cond_10
    :goto_10
    return-void

    .line 170
    :cond_11
    iget v0, p0, Lcom/bytedance/sdk/a/a/o;->c:I

    iget v1, p0, Lcom/bytedance/sdk/a/a/o;->b:I

    sub-int v1, v0, v1

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    rsub-int v2, v0, 0x2000

    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/a/o;->d:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    :goto_24
    add-int/2addr v0, v2

    .line 172
    if-gt v1, v0, :cond_10

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/a/o;->a(Lcom/bytedance/sdk/a/a/o;I)V

    .line 174
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/o;->b()Lcom/bytedance/sdk/a/a/o;

    .line 175
    invoke-static {p0}, Lcom/bytedance/sdk/a/a/p;->a(Lcom/bytedance/sdk/a/a/o;)V

    goto :goto_10

    .line 171
    :cond_33
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/o;->g:Lcom/bytedance/sdk/a/a/o;

    iget v0, v0, Lcom/bytedance/sdk/a/a/o;->b:I

    goto :goto_24
.end method
