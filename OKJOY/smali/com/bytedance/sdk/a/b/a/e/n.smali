.class public final Lcom/bytedance/sdk/a/b/a/e/n;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private a:I

.field private final b:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    return-void
.end method


# virtual methods
.method a(II)Lcom/bytedance/sdk/a/b/a/e/n;
    .registers 5

    .prologue
    .line 77
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    array-length v0, v0

    if-lt p1, v0, :cond_8

    .line 84
    :cond_7
    :goto_7
    return-object p0

    .line 81
    :cond_8
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 82
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    aput p2, v0, p1

    goto :goto_7
.end method

.method a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 72
    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 74
    return-void
.end method

.method a(Lcom/bytedance/sdk/a/b/a/e/n;)V
    .registers 4

    .prologue
    .line 148
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    .line 149
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/n;->a(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 148
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_e
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/n;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/n;->a(II)Lcom/bytedance/sdk/a/b/a/e/n;

    goto :goto_b

    .line 152
    :cond_16
    return-void
.end method

.method a(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 91
    shl-int v1, v0, p1

    .line 92
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method b()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method b(I)I
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method c()I
    .registers 3

    .prologue
    .line 113
    const/4 v0, 0x2

    .line 114
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method c(I)I
    .registers 4

    .prologue
    .line 124
    const/16 v0, 0x10

    .line 125
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    const/4 v1, 0x4

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method d()I
    .registers 3

    .prologue
    .line 139
    const/16 v0, 0x80

    .line 140
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    :goto_c
    return v0

    :cond_d
    const v0, 0xffff

    goto :goto_c
.end method

.method d(I)I
    .registers 4

    .prologue
    .line 129
    const/16 v0, 0x20

    .line 130
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/n;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/n;->b:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_c
    return p1
.end method
