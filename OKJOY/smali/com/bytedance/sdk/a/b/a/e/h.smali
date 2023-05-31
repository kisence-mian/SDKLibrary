.class final Lcom/bytedance/sdk/a/b/a/e/h;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/e/h$b;,
        Lcom/bytedance/sdk/a/b/a/e/h$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field final b:Lcom/bytedance/sdk/a/b/a/e/d$a;

.field private final c:Lcom/bytedance/sdk/a/a/e;

.field private final d:Lcom/bytedance/sdk/a/b/a/e/h$a;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const-class v0, Lcom/bytedance/sdk/a/b/a/e/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/h;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/a/e;Z)V
    .registers 6

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    .line 75
    iput-boolean p2, p0, Lcom/bytedance/sdk/a/b/a/e/h;->e:Z

    .line 76
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/h$a;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/h$a;-><init>(Lcom/bytedance/sdk/a/a/e;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->d:Lcom/bytedance/sdk/a/b/a/e/h$a;

    .line 77
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/d$a;

    const/16 v1, 0x1000

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/h;->d:Lcom/bytedance/sdk/a/b/a/e/h$a;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/d$a;-><init>(ILcom/bytedance/sdk/a/a/s;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->b:Lcom/bytedance/sdk/a/b/a/e/d$a;

    .line 78
    return-void
.end method

.method static a(IBS)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_6

    add-int/lit8 p0, p0, -0x1

    .line 416
    :cond_6
    if-le p2, p0, :cond_20

    .line 417
    const-string v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 419
    :cond_20
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method static a(Lcom/bytedance/sdk/a/a/e;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 409
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 410
    invoke-interface {p0}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 408
    return v0
.end method

.method private a(ISBI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->d:Lcom/bytedance/sdk/a/b/a/e/h$a;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/h;->d:Lcom/bytedance/sdk/a/b/a/e/h$a;

    iput p1, v1, Lcom/bytedance/sdk/a/b/a/e/h$a;->d:I

    iput p1, v0, Lcom/bytedance/sdk/a/b/a/e/h$a;->a:I

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->d:Lcom/bytedance/sdk/a/b/a/e/h$a;

    iput-short p2, v0, Lcom/bytedance/sdk/a/b/a/e/h$a;->e:S

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->d:Lcom/bytedance/sdk/a/b/a/e/h$a;

    iput-byte p3, v0, Lcom/bytedance/sdk/a/b/a/e/h$a;->b:B

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->d:Lcom/bytedance/sdk/a/b/a/e/h$a;

    iput p4, v0, Lcom/bytedance/sdk/a/b/a/e/h$a;->c:I

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->b:Lcom/bytedance/sdk/a/b/a/e/d$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->a()V

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->b:Lcom/bytedance/sdk/a/b/a/e/d$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/d$a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/e/h$b;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v1

    .line 231
    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    .line 232
    :goto_c
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 233
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v2}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    .line 234
    invoke-interface {p1, p2, v1, v2, v0}, Lcom/bytedance/sdk/a/b/a/e/h$b;->a(IIIZ)V

    .line 235
    return-void

    .line 231
    :cond_1e
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 173
    if-nez p4, :cond_c

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 175
    :cond_c
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    .line 177
    :goto_11
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 179
    :cond_1e
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_27

    .line 180
    invoke-direct {p0, p1, p4}, Lcom/bytedance/sdk/a/b/a/e/h;->a(Lcom/bytedance/sdk/a/b/a/e/h$b;I)V

    .line 181
    add-int/lit8 p2, p2, -0x5

    .line 184
    :cond_27
    invoke-static {p2, p3, v0}, Lcom/bytedance/sdk/a/b/a/e/h;->a(IBS)I

    move-result v2

    .line 186
    invoke-direct {p0, v2, v0, p3, p4}, Lcom/bytedance/sdk/a/b/a/e/h;->a(ISBI)Ljava/util/List;

    move-result-object v0

    .line 188
    const/4 v2, -0x1

    invoke-interface {p1, v1, p4, v2, v0}, Lcom/bytedance/sdk/a/b/a/e/h$b;->a(ZIILjava/util/List;)V

    .line 189
    return-void

    :cond_34
    move v1, v0

    .line 175
    goto :goto_11
.end method

.method private b(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 206
    if-nez p4, :cond_d

    const-string v1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 209
    :cond_d
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_21

    move v2, v1

    .line 210
    :goto_12
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_23

    .line 211
    :goto_16
    if-eqz v1, :cond_25

    .line 212
    const-string v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_21
    move v2, v0

    .line 209
    goto :goto_12

    :cond_23
    move v1, v0

    .line 210
    goto :goto_16

    .line 215
    :cond_25
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_32

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 216
    :cond_32
    invoke-static {p2, p3, v0}, Lcom/bytedance/sdk/a/b/a/e/h;->a(IBS)I

    move-result v1

    .line 218
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {p1, v2, p4, v3, v1}, Lcom/bytedance/sdk/a/b/a/e/h$b;->a(ZILcom/bytedance/sdk/a/a/e;I)V

    .line 219
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 220
    return-void
.end method

.method private c(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 224
    const/4 v0, 0x5

    if-eq p2, v0, :cond_14

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 225
    :cond_14
    if-nez p4, :cond_1f

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 226
    :cond_1f
    invoke-direct {p0, p1, p4}, Lcom/bytedance/sdk/a/b/a/e/h;->a(Lcom/bytedance/sdk/a/b/a/e/h$b;I)V

    .line 227
    return-void
.end method

.method private d(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 239
    const/4 v0, 0x4

    if-eq p2, v0, :cond_14

    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 240
    :cond_14
    if-nez p4, :cond_1f

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 241
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v0

    .line 242
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/e/b;->a(I)Lcom/bytedance/sdk/a/b/a/e/b;

    move-result-object v1

    .line 243
    if-nez v1, :cond_3a

    .line 244
    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 246
    :cond_3a
    invoke-interface {p1, p4, v1}, Lcom/bytedance/sdk/a/b/a/e/h$b;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 247
    return-void
.end method

.method private e(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 251
    if-eqz p4, :cond_d

    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 252
    :cond_d
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_20

    .line 253
    if-eqz p2, :cond_1c

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 254
    :cond_1c
    invoke-interface {p1}, Lcom/bytedance/sdk/a/b/a/e/h$b;->a()V

    .line 294
    :goto_1f
    return-void

    .line 258
    :cond_20
    rem-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_33

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 259
    :cond_33
    new-instance v3, Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-direct {v3}, Lcom/bytedance/sdk/a/b/a/e/n;-><init>()V

    move v1, v2

    .line 260
    :goto_39
    if-ge v1, p2, :cond_84

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->i()S

    move-result v0

    .line 262
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v4}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v4

    .line 264
    packed-switch v0, :pswitch_data_88

    .line 291
    :cond_4a
    :goto_4a
    :pswitch_4a
    invoke-virtual {v3, v0, v4}, Lcom/bytedance/sdk/a/b/a/e/n;->a(II)Lcom/bytedance/sdk/a/b/a/e/n;

    .line 260
    add-int/lit8 v0, v1, 0x6

    move v1, v0

    goto :goto_39

    .line 268
    :pswitch_51
    if-eqz v4, :cond_4a

    if-eq v4, v6, :cond_4a

    .line 269
    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 273
    :pswitch_5e
    const/4 v0, 0x4

    .line 274
    goto :goto_4a

    .line 276
    :pswitch_60
    const/4 v0, 0x7

    .line 277
    if-gez v4, :cond_4a

    .line 278
    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 282
    :pswitch_6c
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_75

    const v5, 0xffffff

    if-le v4, v5, :cond_4a

    .line 283
    :cond_75
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 293
    :cond_84
    invoke-interface {p1, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/h$b;->a(ZLcom/bytedance/sdk/a/b/a/e/n;)V

    goto :goto_1f

    .line 264
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_51
        :pswitch_5e
        :pswitch_60
        :pswitch_6c
        :pswitch_4a
    .end packed-switch
.end method

.method private f(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 298
    if-nez p4, :cond_c

    .line 299
    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 301
    :cond_c
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 302
    :cond_19
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 303
    add-int/lit8 v2, p2, -0x4

    .line 304
    invoke-static {v2, p3, v0}, Lcom/bytedance/sdk/a/b/a/e/h;->a(IBS)I

    move-result v2

    .line 305
    invoke-direct {p0, v2, v0, p3, p4}, Lcom/bytedance/sdk/a/b/a/e/h;->a(ISBI)Ljava/util/List;

    move-result-object v0

    .line 306
    invoke-interface {p1, p4, v1, v0}, Lcom/bytedance/sdk/a/b/a/e/h$b;->a(IILjava/util/List;)V

    .line 307
    return-void
.end method

.method private g(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 311
    const/16 v2, 0x8

    if-eq p2, v2, :cond_15

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 312
    :cond_15
    if-eqz p4, :cond_20

    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 313
    :cond_20
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v2}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v2

    .line 314
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v3}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v3

    .line 315
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_34

    .line 316
    :goto_30
    invoke-interface {p1, v0, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/h$b;->a(ZII)V

    .line 317
    return-void

    :cond_34
    move v0, v1

    .line 315
    goto :goto_30
.end method

.method private h(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 321
    const/16 v0, 0x8

    if-ge p2, v0, :cond_15

    const-string v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 322
    :cond_15
    if-eqz p4, :cond_20

    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 323
    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v1

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v0

    .line 325
    add-int/lit8 v2, p2, -0x8

    .line 326
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/e/b;->a(I)Lcom/bytedance/sdk/a/b/a/e/b;

    move-result-object v3

    .line 327
    if-nez v3, :cond_43

    .line 328
    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 330
    :cond_43
    sget-object v0, Lcom/bytedance/sdk/a/a/f;->b:Lcom/bytedance/sdk/a/a/f;

    .line 331
    if-lez v2, :cond_4e

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lcom/bytedance/sdk/a/a/e;->c(J)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    .line 334
    :cond_4e
    invoke-interface {p1, v1, v3, v0}, Lcom/bytedance/sdk/a/b/a/e/h$b;->a(ILcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/a/f;)V

    .line 335
    return-void
.end method

.method private i(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 339
    const/4 v0, 0x4

    if-eq p2, v0, :cond_14

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 340
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    .line 341
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_34

    const-string v2, "windowSizeIncrement was 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 342
    :cond_34
    invoke-interface {p1, p4, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/h$b;->a(IJ)V

    .line 343
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/a/e/h$b;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 81
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->e:Z

    if-eqz v0, :cond_15

    .line 83
    invoke-virtual {p0, v6, p1}, Lcom/bytedance/sdk/a/b/a/e/h;->a(ZLcom/bytedance/sdk/a/b/a/e/h$b;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 84
    const-string v0, "Required SETTINGS preface not received"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 88
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/e;->a:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/bytedance/sdk/a/a/e;->c(J)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/h;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 90
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/h;->a:Ljava/util/logging/Logger;

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 91
    :cond_3f
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/e;->a:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 92
    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 95
    :cond_56
    return-void
.end method

.method public a(ZLcom/bytedance/sdk/a/b/a/e/h$b;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 99
    :try_start_2
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    const-wide/16 v4, 0x9

    invoke-interface {v2, v4, v5}, Lcom/bytedance/sdk/a/a/e;->a(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_24

    .line 115
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/e/h;->a(Lcom/bytedance/sdk/a/a/e;)I

    move-result v2

    .line 116
    if-ltz v2, :cond_15

    const/16 v3, 0x4000

    if-le v2, v3, :cond_27

    .line 117
    :cond_15
    const-string v3, "FRAME_SIZE_ERROR: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 100
    :catch_24
    move-exception v0

    move v0, v1

    .line 168
    :goto_26
    return v0

    .line 119
    :cond_27
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v3}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 120
    if-eqz p1, :cond_44

    const/4 v4, 0x4

    if-eq v3, v4, :cond_44

    .line 121
    const-string v2, "Expected a SETTINGS frame but was %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/bytedance/sdk/a/b/a/e/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 123
    :cond_44
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v1}, Lcom/bytedance/sdk/a/a/e;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 124
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v4}, Lcom/bytedance/sdk/a/a/e;->j()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 125
    sget-object v5, Lcom/bytedance/sdk/a/b/a/e/h;->a:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_6a

    sget-object v5, Lcom/bytedance/sdk/a/b/a/e/h;->a:Ljava/util/logging/Logger;

    invoke-static {v0, v4, v2, v3, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 127
    :cond_6a
    packed-switch v3, :pswitch_data_98

    .line 166
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    goto :goto_26

    .line 129
    :pswitch_74
    invoke-direct {p0, p2, v2, v1, v4}, Lcom/bytedance/sdk/a/b/a/e/h;->b(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V

    goto :goto_26

    .line 133
    :pswitch_78
    invoke-direct {p0, p2, v2, v1, v4}, Lcom/bytedance/sdk/a/b/a/e/h;->a(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V

    goto :goto_26

    .line 137
    :pswitch_7c
    invoke-direct {p0, p2, v2, v1, v4}, Lcom/bytedance/sdk/a/b/a/e/h;->c(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V

    goto :goto_26

    .line 141
    :pswitch_80
    invoke-direct {p0, p2, v2, v1, v4}, Lcom/bytedance/sdk/a/b/a/e/h;->d(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V

    goto :goto_26

    .line 145
    :pswitch_84
    invoke-direct {p0, p2, v2, v1, v4}, Lcom/bytedance/sdk/a/b/a/e/h;->e(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V

    goto :goto_26

    .line 149
    :pswitch_88
    invoke-direct {p0, p2, v2, v1, v4}, Lcom/bytedance/sdk/a/b/a/e/h;->f(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V

    goto :goto_26

    .line 153
    :pswitch_8c
    invoke-direct {p0, p2, v2, v1, v4}, Lcom/bytedance/sdk/a/b/a/e/h;->g(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V

    goto :goto_26

    .line 157
    :pswitch_90
    invoke-direct {p0, p2, v2, v1, v4}, Lcom/bytedance/sdk/a/b/a/e/h;->h(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V

    goto :goto_26

    .line 161
    :pswitch_94
    invoke-direct {p0, p2, v2, v1, v4}, Lcom/bytedance/sdk/a/b/a/e/h;->i(Lcom/bytedance/sdk/a/b/a/e/h$b;IBI)V

    goto :goto_26

    .line 127
    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_74
        :pswitch_78
        :pswitch_7c
        :pswitch_80
        :pswitch_84
        :pswitch_88
        :pswitch_8c
        :pswitch_90
        :pswitch_94
    .end packed-switch
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/h;->c:Lcom/bytedance/sdk/a/a/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/e;->close()V

    .line 348
    return-void
.end method
