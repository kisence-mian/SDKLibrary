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
            "Ljava/util/List<",
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
    .registers 5

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
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    .line 130
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    .line 137
    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->g:I

    .line 138
    iput p2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    .line 139
    invoke-static {p3}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->f:Lcom/bytedance/sdk/a/a/e;

    .line 140
    return-void
.end method

.method constructor <init>(ILcom/bytedance/sdk/a/a/s;)V
    .registers 3

    .line 133
    invoke-direct {p0, p1, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/d$a;-><init>(IILcom/bytedance/sdk/a/a/s;)V

    .line 134
    return-void
.end method

.method private a(I)I
    .registers 6

    .line 167
    nop

    .line 168
    const/4 v0, 0x0

    if-lez p1, :cond_3d

    .line 170
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    if-lt v1, v2, :cond_2c

    if-lez p1, :cond_2c

    .line 171
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    sub-int/2addr p1, v2

    .line 172
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    .line 173
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 170
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 176
    :cond_2c
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    .line 180
    :cond_3d
    return v0
.end method

.method private a(ILcom/bytedance/sdk/a/b/a/e/c;)V
    .registers 8

    .line 281
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget v0, p2, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    .line 284
    const/4 v1, -0x1

    if-eq p1, v1, :cond_15

    .line 285
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    sub-int/2addr v0, v2

    .line 289
    :cond_15
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    if-le v0, v2, :cond_1d

    .line 290
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->e()V

    .line 291
    return-void

    .line 295
    :cond_1d
    iget v3, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 296
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(I)I

    move-result v2

    .line 298
    if-ne p1, v1, :cond_55

    .line 299
    iget p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v2, v1

    if-le p1, v2, :cond_44

    .line 300
    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/bytedance/sdk/a/b/a/e/c;

    .line 301
    const/4 v2, 0x0

    array-length v3, v1

    array-length v4, v1

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    .line 303
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    .line 305
    :cond_44
    iget p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    .line 306
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aput-object p2, v1, p1

    .line 307
    iget p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    goto :goto_5f

    .line 309
    :cond_55
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 310
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aput-object p2, v1, p1

    .line 312
    :goto_5f
    iget p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    .line 313
    return-void
.end method

.method private b(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 224
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object p1, v0, p1

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    goto :goto_29

    .line 227
    :cond_10
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c(I)I

    move-result v0

    .line 228
    if-ltz v0, :cond_2a

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_2a

    .line 231
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->e:Ljava/util/List;

    aget-object v0, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :goto_29
    return-void

    .line 229
    :cond_2a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(I)I
    .registers 3

    .line 237
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->b:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private d()V
    .registers 3

    .line 147
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    if-ge v0, v1, :cond_10

    .line 148
    if-nez v0, :cond_c

    .line 149
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->e()V

    goto :goto_10

    .line 151
    :cond_c
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(I)I

    .line 154
    :cond_10
    :goto_10
    return-void
.end method

.method private d(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->f(I)Lcom/bytedance/sdk/a/a/f;

    move-result-object p1

    .line 242
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->e:Ljava/util/List;

    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/c;

    invoke-direct {v2, p1, v0}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/f;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method private e()V
    .registers 3

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
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->c:I

    .line 160
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->d:I

    .line 161
    return-void
.end method

.method private e(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->f(I)Lcom/bytedance/sdk/a/a/f;

    move-result-object p1

    .line 255
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    .line 256
    new-instance v1, Lcom/bytedance/sdk/a/b/a/e/c;

    invoke-direct {v1, p1, v0}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/f;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(ILcom/bytedance/sdk/a/b/a/e/c;)V

    .line 257
    return-void
.end method

.method private f(I)Lcom/bytedance/sdk/a/a/f;
    .registers 4

    .line 266
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 267
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    return-object p1

    .line 269
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v1, v1

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c(I)I

    move-result p1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    return-object p1
.end method

.method private f()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/e/d;->a(Lcom/bytedance/sdk/a/a/f;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    .line 261
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v1

    .line 262
    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/c;

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/f;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(ILcom/bytedance/sdk/a/b/a/e/c;)V

    .line 263
    return-void
.end method

.method private g(I)Z
    .registers 4

    .line 274
    const/4 v0, 0x1

    if-ltz p1, :cond_a

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private h()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->f:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method a(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    and-int/2addr p1, p2

    .line 321
    if-ge p1, p2, :cond_4

    .line 322
    return p1

    .line 326
    :cond_4
    nop

    .line 327
    const/4 p1, 0x0

    .line 329
    :goto_6
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->h()I

    move-result v0

    .line 330
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_15

    .line 331
    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    .line 332
    add-int/lit8 p1, p1, 0x7

    .line 337
    goto :goto_6

    .line 334
    :cond_15
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    .line 335
    nop

    .line 338
    return p2
.end method

.method a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->f:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->e()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 189
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->f:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 190
    const/16 v1, 0x80

    if-eq v0, v1, :cond_87

    .line 192
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_24

    .line 193
    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(II)I

    move-result v0

    .line 194
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->b(I)V

    .line 195
    goto :goto_85

    :cond_24
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2c

    .line 196
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->g()V

    goto :goto_85

    .line 197
    :cond_2c
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_3c

    .line 198
    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(II)I

    move-result v0

    .line 199
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->e(I)V

    .line 200
    goto :goto_85

    :cond_3c
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6f

    .line 201
    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->h:I

    .line 202
    if-ltz v0, :cond_54

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->g:I

    if-gt v0, v1, :cond_54

    .line 206
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->d()V

    goto :goto_85

    .line 204
    :cond_54
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

    .line 207
    :cond_6f
    const/16 v1, 0x10

    if-eq v0, v1, :cond_82

    if-nez v0, :cond_76

    goto :goto_82

    .line 210
    :cond_76
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(II)I

    move-result v0

    .line 211
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->d(I)V

    goto :goto_85

    .line 208
    :cond_82
    :goto_82
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->f()V

    .line 213
    :goto_85
    goto/16 :goto_0

    .line 191
    :cond_87
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_8f
    return-void
.end method

.method public b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;"
        }
    .end annotation

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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->h()I

    move-result v0

    .line 346
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 347
    :goto_d
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a(II)I

    move-result v0

    .line 349
    if-eqz v1, :cond_29

    .line 350
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/e/k;->a()Lcom/bytedance/sdk/a/b/a/e/k;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->f:Lcom/bytedance/sdk/a/a/e;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lcom/bytedance/sdk/a/a/e;->g(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/b/a/e/k;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a([B)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0

    .line 352
    :cond_29
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$a;->f:Lcom/bytedance/sdk/a/a/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/a/a/e;->c(J)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method
