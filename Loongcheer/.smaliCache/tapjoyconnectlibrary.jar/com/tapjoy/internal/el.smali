.class public final Lcom/tapjoy/internal/el;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/iv;

.field public b:Lcom/tapjoy/internal/eh;

.field private c:J

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/iv;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/internal/el;->c:J

    .line 67
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/tapjoy/internal/el;->d:J

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/el;->f:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/el;->g:I

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tapjoy/internal/el;->h:J

    .line 80
    iput-object p1, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    .line 81
    return-void
.end method

.method private a(I)V
    .registers 7

    .line 217
    :goto_0
    iget-wide v0, p0, Lcom/tapjoy/internal/el;->c:J

    iget-wide v2, p0, Lcom/tapjoy/internal/el;->d:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_69

    iget-object v0, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v0}, Lcom/tapjoy/internal/iv;->b()Z

    move-result v0

    if-nez v0, :cond_69

    .line 218
    invoke-direct {p0}, Lcom/tapjoy/internal/el;->h()I

    move-result v0

    .line 219
    if-eqz v0, :cond_61

    .line 220
    shr-int/lit8 v1, v0, 0x3

    .line 221
    and-int/lit8 v0, v0, 0x7

    .line 222
    packed-switch v0, :pswitch_data_72

    .line 247
    new-instance p1, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected field encoding: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :pswitch_2d
    const/4 v0, 0x5

    iput v0, p0, Lcom/tapjoy/internal/el;->f:I

    .line 244
    invoke-virtual {p0}, Lcom/tapjoy/internal/el;->e()I

    .line 245
    goto :goto_0

    .line 227
    :pswitch_34
    if-ne v1, p1, :cond_37

    return-void

    .line 228
    :cond_37
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected end group"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :pswitch_3f
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/el;->a(I)V

    .line 225
    goto :goto_0

    .line 230
    :pswitch_43
    invoke-direct {p0}, Lcom/tapjoy/internal/el;->h()I

    move-result v0

    .line 231
    iget-wide v1, p0, Lcom/tapjoy/internal/el;->c:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tapjoy/internal/el;->c:J

    .line 232
    iget-object v0, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v0, v3, v4}, Lcom/tapjoy/internal/iv;->d(J)V

    .line 233
    goto :goto_0

    .line 239
    :pswitch_53
    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/el;->f:I

    .line 240
    invoke-virtual {p0}, Lcom/tapjoy/internal/el;->f()J

    .line 241
    goto :goto_0

    .line 235
    :pswitch_5a
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/el;->f:I

    .line 236
    invoke-virtual {p0}, Lcom/tapjoy/internal/el;->d()J

    .line 237
    goto :goto_0

    .line 219
    :cond_61
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected tag 0"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :cond_69
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    goto :goto_70

    :goto_6f
    throw p1

    :goto_70
    goto :goto_6f

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_53
        :pswitch_43
        :pswitch_3f
        :pswitch_34
        :pswitch_2d
    .end packed-switch
.end method

.method private b(I)V
    .registers 8

    .line 366
    iget v0, p0, Lcom/tapjoy/internal/el;->f:I

    const/4 v1, 0x6

    if-ne v0, p1, :cond_8

    .line 367
    iput v1, p0, Lcom/tapjoy/internal/el;->f:I

    return-void

    .line 369
    :cond_8
    iget-wide v2, p0, Lcom/tapjoy/internal/el;->c:J

    iget-wide v4, p0, Lcom/tapjoy/internal/el;->d:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_23

    .line 371
    cmp-long p1, v2, v4

    if-nez p1, :cond_1f

    .line 373
    iget-wide v2, p0, Lcom/tapjoy/internal/el;->h:J

    iput-wide v2, p0, Lcom/tapjoy/internal/el;->d:J

    .line 374
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tapjoy/internal/el;->h:J

    .line 375
    iput v1, p0, Lcom/tapjoy/internal/el;->f:I

    return-void

    .line 377
    :cond_1f
    const/4 p1, 0x7

    iput p1, p0, Lcom/tapjoy/internal/el;->f:I

    .line 380
    return-void

    .line 370
    :cond_23
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected to end at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tapjoy/internal/el;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tapjoy/internal/el;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h()I
    .registers 7

    .line 282
    iget-wide v0, p0, Lcom/tapjoy/internal/el;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/internal/el;->c:J

    .line 283
    iget-object v0, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v0}, Lcom/tapjoy/internal/iv;->d()B

    move-result v0

    .line 284
    if-ltz v0, :cond_10

    .line 285
    return v0

    .line 287
    :cond_10
    and-int/lit8 v0, v0, 0x7f

    .line 288
    iget-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    .line 289
    iget-object v1, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v1}, Lcom/tapjoy/internal/iv;->d()B

    move-result v1

    if-ltz v1, :cond_23

    .line 290
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_81

    .line 292
    :cond_23
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 293
    iget-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    .line 294
    iget-object v1, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v1}, Lcom/tapjoy/internal/iv;->d()B

    move-result v1

    if-ltz v1, :cond_39

    .line 295
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_81

    .line 297
    :cond_39
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 298
    iget-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    .line 299
    iget-object v1, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v1}, Lcom/tapjoy/internal/iv;->d()B

    move-result v1

    if-ltz v1, :cond_4f

    .line 300
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_81

    .line 302
    :cond_4f
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 303
    iget-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    .line 304
    iget-object v1, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v1}, Lcom/tapjoy/internal/iv;->d()B

    move-result v1

    shl-int/lit8 v4, v1, 0x1c

    or-int/2addr v0, v4

    .line 305
    if-gez v1, :cond_81

    .line 307
    const/4 v1, 0x0

    :goto_65
    const/4 v4, 0x5

    if-ge v1, v4, :cond_79

    .line 308
    iget-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    .line 309
    iget-object v4, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v4}, Lcom/tapjoy/internal/iv;->d()B

    move-result v4

    if-ltz v4, :cond_76

    .line 310
    return v0

    .line 307
    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 313
    :cond_79
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed VARINT"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_81
    :goto_81
    return v0
.end method


# virtual methods
.method public final a()J
    .registers 5

    .line 89
    iget v0, p0, Lcom/tapjoy/internal/el;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 92
    iget v0, p0, Lcom/tapjoy/internal/el;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/el;->e:I

    const/16 v1, 0x41

    if-gt v0, v1, :cond_19

    .line 97
    iget-wide v0, p0, Lcom/tapjoy/internal/el;->h:J

    .line 98
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tapjoy/internal/el;->h:J

    .line 99
    const/4 v2, 0x6

    iput v2, p0, Lcom/tapjoy/internal/el;->f:I

    .line 100
    return-wide v0

    .line 93
    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wire recursion limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to beginMessage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(J)V
    .registers 9

    .line 110
    iget v0, p0, Lcom/tapjoy/internal/el;->f:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4e

    .line 113
    iget v0, p0, Lcom/tapjoy/internal/el;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/el;->e:I

    if-ltz v0, :cond_46

    iget-wide v1, p0, Lcom/tapjoy/internal/el;->h:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_46

    .line 116
    iget-wide v1, p0, Lcom/tapjoy/internal/el;->c:J

    iget-wide v3, p0, Lcom/tapjoy/internal/el;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_43

    if-nez v0, :cond_20

    goto :goto_43

    .line 117
    :cond_20
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected to end at "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tapjoy/internal/el;->d:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/tapjoy/internal/el;->c:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_43
    :goto_43
    iput-wide p1, p0, Lcom/tapjoy/internal/el;->d:J

    .line 120
    return-void

    .line 114
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No corresponding call to beginMessage()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_4e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call to endMessage()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()I
    .registers 8

    .line 128
    iget v0, p0, Lcom/tapjoy/internal/el;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_b

    .line 129
    iput v1, p0, Lcom/tapjoy/internal/el;->f:I

    .line 130
    iget v0, p0, Lcom/tapjoy/internal/el;->g:I

    return v0

    .line 131
    :cond_b
    const/4 v2, 0x6

    if-ne v0, v2, :cond_b2

    .line 135
    :goto_e
    iget-wide v2, p0, Lcom/tapjoy/internal/el;->c:J

    iget-wide v4, p0, Lcom/tapjoy/internal/el;->d:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_b0

    iget-object v0, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v0}, Lcom/tapjoy/internal/iv;->b()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 136
    invoke-direct {p0}, Lcom/tapjoy/internal/el;->h()I

    move-result v0

    .line 137
    if-eqz v0, :cond_a8

    .line 139
    shr-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/tapjoy/internal/el;->g:I

    .line 140
    and-int/lit8 v0, v0, 0x7

    .line 141
    packed-switch v0, :pswitch_data_bc

    .line 177
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unexpected field encoding: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :pswitch_3d
    sget-object v0, Lcom/tapjoy/internal/eh;->d:Lcom/tapjoy/internal/eh;

    iput-object v0, p0, Lcom/tapjoy/internal/el;->b:Lcom/tapjoy/internal/eh;

    .line 173
    const/4 v0, 0x5

    iput v0, p0, Lcom/tapjoy/internal/el;->f:I

    .line 174
    iget v0, p0, Lcom/tapjoy/internal/el;->g:I

    return v0

    .line 147
    :pswitch_47
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected end group"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :pswitch_4f
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/el;->a(I)V

    .line 144
    goto :goto_e

    .line 150
    :pswitch_53
    sget-object v0, Lcom/tapjoy/internal/eh;->c:Lcom/tapjoy/internal/eh;

    iput-object v0, p0, Lcom/tapjoy/internal/el;->b:Lcom/tapjoy/internal/eh;

    .line 151
    iput v1, p0, Lcom/tapjoy/internal/el;->f:I

    .line 152
    invoke-direct {p0}, Lcom/tapjoy/internal/el;->h()I

    move-result v0

    .line 153
    if-ltz v0, :cond_84

    .line 154
    iget-wide v1, p0, Lcom/tapjoy/internal/el;->h:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_7e

    .line 156
    iget-wide v1, p0, Lcom/tapjoy/internal/el;->d:J

    iput-wide v1, p0, Lcom/tapjoy/internal/el;->h:J

    .line 157
    iget-wide v3, p0, Lcom/tapjoy/internal/el;->c:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tapjoy/internal/el;->d:J

    .line 158
    cmp-long v0, v3, v1

    if-gtz v0, :cond_78

    .line 159
    iget v0, p0, Lcom/tapjoy/internal/el;->g:I

    return v0

    .line 158
    :cond_78
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 154
    :cond_7e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 153
    :cond_84
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Negative length: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :pswitch_94
    sget-object v0, Lcom/tapjoy/internal/eh;->b:Lcom/tapjoy/internal/eh;

    iput-object v0, p0, Lcom/tapjoy/internal/el;->b:Lcom/tapjoy/internal/eh;

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/el;->f:I

    .line 169
    iget v0, p0, Lcom/tapjoy/internal/el;->g:I

    return v0

    .line 162
    :pswitch_9e
    sget-object v0, Lcom/tapjoy/internal/eh;->a:Lcom/tapjoy/internal/eh;

    iput-object v0, p0, Lcom/tapjoy/internal/el;->b:Lcom/tapjoy/internal/eh;

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/el;->f:I

    .line 164
    iget v0, p0, Lcom/tapjoy/internal/el;->g:I

    return v0

    .line 137
    :cond_a8
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected tag 0"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_b0
    const/4 v0, -0x1

    return v0

    .line 132
    :cond_b2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to nextTag()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_bb

    :goto_ba
    throw v0

    :goto_bb
    goto :goto_ba

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_94
        :pswitch_53
        :pswitch_4f
        :pswitch_47
        :pswitch_3d
    .end packed-switch
.end method

.method public final c()I
    .registers 4

    .line 273
    iget v0, p0, Lcom/tapjoy/internal/el;->f:I

    if-eqz v0, :cond_1f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    goto :goto_1f

    .line 274
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/el;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/tapjoy/internal/el;->h()I

    move-result v0

    .line 277
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/el;->b(I)V

    .line 278
    return v0
.end method

.method public final d()J
    .registers 9

    .line 323
    iget v0, p0, Lcom/tapjoy/internal/el;->f:I

    if-eqz v0, :cond_1f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    goto :goto_1f

    .line 324
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/el;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1f
    :goto_1f
    nop

    .line 327
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 328
    :goto_24
    const/16 v4, 0x40

    if-ge v3, v4, :cond_45

    .line 329
    iget-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    .line 330
    iget-object v4, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v4}, Lcom/tapjoy/internal/iv;->d()B

    move-result v4

    .line 331
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    .line 332
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_42

    .line 333
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/el;->b(I)V

    .line 334
    return-wide v0

    .line 336
    :cond_42
    add-int/lit8 v3, v3, 0x7

    .line 337
    goto :goto_24

    .line 338
    :cond_45
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "WireInput encountered a malformed varint"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_4e

    :goto_4d
    throw v0

    :goto_4e
    goto :goto_4d
.end method

.method public final e()I
    .registers 7

    .line 343
    iget v0, p0, Lcom/tapjoy/internal/el;->f:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_20

    .line 344
    :cond_9
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected FIXED32 or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/el;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    const-wide/16 v2, 0x4

    invoke-interface {v0, v2, v3}, Lcom/tapjoy/internal/iv;->a(J)V

    .line 347
    iget-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    .line 348
    iget-object v0, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v0}, Lcom/tapjoy/internal/iv;->f()I

    move-result v0

    .line 349
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/el;->b(I)V

    .line 350
    return v0
.end method

.method public final f()J
    .registers 7

    .line 355
    iget v0, p0, Lcom/tapjoy/internal/el;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_20

    .line 356
    :cond_9
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected FIXED64 or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/el;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lcom/tapjoy/internal/iv;->a(J)V

    .line 359
    iget-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/el;->c:J

    .line 360
    iget-object v0, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v0}, Lcom/tapjoy/internal/iv;->g()J

    move-result-wide v2

    .line 361
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/el;->b(I)V

    .line 362
    return-wide v2
.end method

.method final g()J
    .registers 5

    .line 383
    iget v0, p0, Lcom/tapjoy/internal/el;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 386
    iget-wide v0, p0, Lcom/tapjoy/internal/el;->d:J

    iget-wide v2, p0, Lcom/tapjoy/internal/el;->c:J

    sub-long/2addr v0, v2

    .line 387
    iget-object v2, p0, Lcom/tapjoy/internal/el;->a:Lcom/tapjoy/internal/iv;

    invoke-interface {v2, v0, v1}, Lcom/tapjoy/internal/iv;->a(J)V

    .line 388
    const/4 v2, 0x6

    iput v2, p0, Lcom/tapjoy/internal/el;->f:I

    .line 390
    iget-wide v2, p0, Lcom/tapjoy/internal/el;->d:J

    iput-wide v2, p0, Lcom/tapjoy/internal/el;->c:J

    .line 391
    iget-wide v2, p0, Lcom/tapjoy/internal/el;->h:J

    iput-wide v2, p0, Lcom/tapjoy/internal/el;->d:J

    .line 392
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tapjoy/internal/el;->h:J

    .line 393
    return-wide v0

    .line 384
    :cond_1f
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/el;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
