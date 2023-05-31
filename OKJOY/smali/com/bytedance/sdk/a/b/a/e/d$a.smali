.class final Lcom/bytedance/sdk/a/b/a/e/d$a;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:[Lcom/bytedance/sdk/a/b/a/e/c;

.field b:I

.field c:I

.field d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/bytedance/sdk/a/a/e;

.field private final g:I

.field private h:I


# direct methods
.method constructor <init>(IILcom/bytedance/sdk/a/a/s;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->e:Ljava/util/List;

    .line 126
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/bytedance/sdk/a/b/a/e/c;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    .line 129
    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    .line 130
    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    .line 137
    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->g:I

    .line 138
    iput p2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    .line 139
    invoke-static {p3}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->f:Lcom/bytedance/sdk/a/a/e;

    .line 140
    return-void
.end method

.method constructor <init>(ILcom/bytedance/sdk/a/a/s;)V
    .registers 3

    .prologue
    .line 133
    invoke-direct {p0, p1, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/d$a;-><init>(IILcom/bytedance/sdk/a/a/s;)V

    .line 134
    return-void
.end method

.method private a(I)I
    .registers 8

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 168
    if-lez p1, :cond_42

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    if-lt v0, v2, :cond_2b

    if-lez p1, :cond_2b

    .line 171
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    sub-int/2addr p1, v2

    .line 172
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    .line 173
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    .line 174
    add-int/lit8 v1, v1, 0x1

    .line 170
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 176
    :cond_2b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    iget v4, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    .line 180
    :cond_42
    return v1
.end method

.method private a(ILcom/bytedance/sdk/a/b/a/e/c;)V
    .registers 9

    .prologue
    const/4 v3, -0x1

    .line 281
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget v0, p2, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    .line 284
    if-eq p1, v3, :cond_15

    .line 285
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c(I)I

    move-result v2

    aget-object v1, v1, v2

    iget v1, v1, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    sub-int/2addr v0, v1

    .line 289
    :cond_15
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    if-le v0, v1, :cond_1d

    .line 290
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->e()V

    .line 313
    :goto_1c
    return-void

    .line 295
    :cond_1d
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    sub-int/2addr v1, v2

    .line 296
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(I)I

    move-result v1

    .line 298
    if-ne p1, v3, :cond_64

    .line 299
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v2, v2

    if-le v1, v2, :cond_4e

    .line 300
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/bytedance/sdk/a/b/a/e/c;

    .line 301
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v4, v4

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    .line 303
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    .line 305
    :cond_4e
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    .line 306
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aput-object p2, v2, v1

    .line 307
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    .line 312
    :goto_5e
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    goto :goto_1c

    .line 309
    :cond_64
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 310
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aput-object p2, v2, v1

    goto :goto_5e
.end method

.method private b(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 224
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v0, v0, p1

    .line 225
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :goto_f
    return-void

    .line 227
    :cond_10
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c(I)I

    move-result v0

    .line 228
    if-ltz v0, :cond_22

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3d

    .line 229
    :cond_22
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_3d
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method private c(I)I
    .registers 3

    .prologue
    .line 237
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 147
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    if-ge v0, v1, :cond_d

    .line 148
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    if-nez v0, :cond_e

    .line 149
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->e()V

    .line 154
    :cond_d
    :goto_d
    return-void

    .line 151
    :cond_e
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(I)I

    goto :goto_d
.end method

.method private d(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->f(I)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->e:Ljava/util/List;

    new-instance v3, Lcom/bytedance/sdk/a/b/a/e/c;

    invoke-direct {v3, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/f;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    .line 159
    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    .line 160
    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    .line 161
    return-void
.end method

.method private e(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->f(I)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v1

    .line 256
    const/4 v2, -0x1

    new-instance v3, Lcom/bytedance/sdk/a/b/a/e/c;

    invoke-direct {v3, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/f;)V

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(ILcom/bytedance/sdk/a/b/a/e/c;)V

    .line 257
    return-void
.end method

.method private f(I)Lcom/bytedance/sdk/a/a/f;
    .registers 4

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 267
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    .line 269
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    goto :goto_c
.end method

.method private f()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/e/d;->a(Lcom/bytedance/sdk/a/a/f;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    .line 248
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->e:Ljava/util/List;

    new-instance v3, Lcom/bytedance/sdk/a/b/a/e/c;

    invoke-direct {v3, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/f;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method private g()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/e/d;->a(Lcom/bytedance/sdk/a/a/f;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    .line 261
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v1

    .line 262
    const/4 v2, -0x1

    new-instance v3, Lcom/bytedance/sdk/a/b/a/e/c;

    invoke-direct {v3, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/f;)V

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(ILcom/bytedance/sdk/a/b/a/e/c;)V

    .line 263
    return-void
.end method

.method private g(I)Z
    .registers 3

    .prologue
    .line 274
    if-ltz p1, :cond_b

    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private h()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->f:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method a(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    and-int v0, p1, p2

    .line 321
    if-ge v0, p2, :cond_5

    .line 338
    :goto_4
    return v0

    .line 327
    :cond_5
    const/4 v0, 0x0

    .line 329
    :goto_6
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->h()I

    move-result v1

    .line 330
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_15

    .line 331
    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 332
    add-int/lit8 v0, v0, 0x7

    goto :goto_6

    .line 334
    :cond_15
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    .line 335
    goto :goto_4
.end method

.method a()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x40

    .line 188
    :goto_4
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->f:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->e()Z

    move-result v0

    if-nez v0, :cond_92

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->f:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 190
    if-ne v0, v4, :cond_1e

    .line 191
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1e
    and-int/lit16 v1, v0, 0x80

    if-ne v1, v4, :cond_2e

    .line 193
    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(II)I

    move-result v0

    .line 194
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->b(I)V

    goto :goto_4

    .line 195
    :cond_2e
    if-ne v0, v3, :cond_34

    .line 196
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->g()V

    goto :goto_4

    .line 197
    :cond_34
    and-int/lit8 v1, v0, 0x40

    if-ne v1, v3, :cond_44

    .line 198
    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(II)I

    move-result v0

    .line 199
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->e(I)V

    goto :goto_4

    .line 200
    :cond_44
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7b

    .line 201
    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    .line 202
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    if-ltz v0, :cond_5c

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->g:I

    if-le v0, v1, :cond_77

    .line 204
    :cond_5c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_77
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->d()V

    goto :goto_4

    .line 207
    :cond_7b
    const/16 v1, 0x10

    if-eq v0, v1, :cond_81

    if-nez v0, :cond_85

    .line 208
    :cond_81
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->f()V

    goto :goto_4

    .line 210
    :cond_85
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(II)I

    move-result v0

    .line 211
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->d(I)V

    goto/16 :goto_4

    .line 214
    :cond_92
    return-void
.end method

.method public b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 218
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 219
    return-object v0
.end method

.method c()Lcom/bytedance/sdk/a/a/f;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->h()I

    move-result v1

    .line 346
    and-int/lit16 v0, v1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_27

    const/4 v0, 0x1

    .line 347
    :goto_b
    const/16 v2, 0x7f

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(II)I

    move-result v1

    .line 349
    if-eqz v0, :cond_29

    .line 350
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/e/k;->a()Lcom/bytedance/sdk/a/b/a/e/k;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->f:Lcom/bytedance/sdk/a/a/e;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lcom/bytedance/sdk/a/a/e;->g(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/k;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a([B)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    .line 352
    :goto_26
    return-object v0

    .line 346
    :cond_27
    const/4 v0, 0x0

    goto :goto_b

    .line 352
    :cond_29
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->f:Lcom/bytedance/sdk/a/a/e;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/a/a/e;->c(J)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    goto :goto_26
.end method
