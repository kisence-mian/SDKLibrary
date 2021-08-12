.class public final Lcom/tencent/bugly/proguard/i;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/i$a;
    }
.end annotation


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 51
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const-string p2, "GBK"

    iput-object p2, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 55
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    return-void
.end method

.method private a(DIZ)D
    .registers 5

    .line 318
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p3

    if-eqz p3, :cond_2f

    .line 319
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 320
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 321
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch p1, :sswitch_data_3a

    .line 332
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :sswitch_1d
    const-wide/16 p1, 0x0

    .line 324
    goto :goto_31

    .line 329
    :sswitch_20
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    .line 330
    goto :goto_31

    .line 326
    :sswitch_27
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    float-to-double p1, p1

    .line 327
    goto :goto_31

    .line 334
    :cond_2f
    if-nez p4, :cond_32

    .line 337
    :goto_31
    return-wide p1

    .line 335
    :cond_32
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_3a
    .sparse-switch
        0x4 -> :sswitch_27
        0x5 -> :sswitch_20
        0xc -> :sswitch_1d
    .end sparse-switch
.end method

.method private a(FIZ)F
    .registers 4

    .line 298
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 299
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 300
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 301
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch p1, :sswitch_data_32

    .line 309
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :sswitch_1d
    const/4 p1, 0x0

    .line 304
    goto :goto_28

    .line 306
    :sswitch_1f
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    .line 307
    goto :goto_28

    .line 311
    :cond_26
    if-nez p3, :cond_29

    .line 314
    :goto_28
    return p1

    .line 312
    :cond_29
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_32
    .sparse-switch
        0x4 -> :sswitch_1f
        0xc -> :sswitch_1d
    .end sparse-switch
.end method

.method private static a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I
    .registers 4

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 74
    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/tencent/bugly/proguard/i$a;->a:B

    .line 75
    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/bugly/proguard/i$a;->b:I

    .line 76
    iget v0, p0, Lcom/tencent/bugly/proguard/i$a;->b:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1d

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    iput p1, p0, Lcom/tencent/bugly/proguard/i$a;->b:I

    .line 78
    const/4 p0, 0x2

    return p0

    .line 80
    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;IZ)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 493
    if-eqz p2, :cond_76

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_76

    .line 500
    :cond_9
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 501
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 502
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 503
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 505
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p3

    if-eqz p3, :cond_6b

    .line 506
    new-instance p3, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p3}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 507
    iget-object p4, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p3, p4}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 508
    iget-byte p3, p3, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch p3, :pswitch_data_7c

    .line 521
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 510
    :pswitch_3c
    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {p0, p3, p3, p4}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v1

    .line 511
    if-ltz v1, :cond_56

    .line 513
    move v2, p3

    :goto_45
    if-ge v2, v1, :cond_55

    .line 514
    invoke-virtual {p0, v0, p3, p4}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    .line 515
    invoke-virtual {p0, p2, p4, p4}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 516
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 519
    :cond_55
    goto :goto_6d

    .line 512
    :cond_56
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "size invalid: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 523
    :cond_6b
    if-nez p4, :cond_6e

    .line 526
    :goto_6d
    return-object p1

    .line 524
    :cond_6e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 495
    :cond_76
    :goto_76
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :pswitch_data_7c
    .packed-switch 0x8
        :pswitch_3c
    .end packed-switch
.end method

.method private a()V
    .registers 4

    .line 116
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 118
    :goto_5
    iget-object v1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 119
    iget-byte v1, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/i;->a(B)V

    .line 120
    iget-byte v1, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_16

    .line 121
    return-void

    .line 120
    :cond_16
    goto :goto_5
.end method

.method private a(B)V
    .registers 6

    .line 131
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_f4

    .line 190
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string v0, "invalid type."

    invoke-direct {p1, v0}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :pswitch_d
    new-instance v2, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 175
    iget-object v3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 176
    iget-byte v3, v2, Lcom/tencent/bugly/proguard/i$a;->a:B

    if-nez v3, :cond_2a

    .line 179
    invoke-virtual {p0, v1, v1, v0}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p1

    .line 180
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    return-void

    .line 177
    :cond_2a
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "skipField with invalid type, type value: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-byte v1, v2, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :pswitch_4b
    return-void

    .line 184
    :pswitch_4c
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/i;->a()V

    .line 185
    return-void

    .line 168
    :pswitch_50
    invoke-virtual {p0, v1, v1, v0}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p1

    .line 169
    nop

    :goto_55
    if-ge v1, p1, :cond_69

    .line 170
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    iget-byte v0, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/i;->a(B)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 171
    :cond_69
    return-void

    .line 162
    :pswitch_6a
    invoke-virtual {p0, v1, v1, v0}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p1

    .line 163
    nop

    :goto_6f
    shl-int/lit8 v2, p1, 0x1

    if-ge v1, v2, :cond_85

    .line 164
    new-instance v2, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    iget-byte v2, v2, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/i;->a(B)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 165
    :cond_85
    return-void

    .line 158
    :pswitch_86
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    return-void

    .line 151
    :pswitch_97
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 152
    if-gez p1, :cond_a1

    .line 153
    add-int/lit16 p1, p1, 0x100

    .line 154
    :cond_a1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    return-void

    .line 148
    :pswitch_ac
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    return-void

    .line 145
    :pswitch_b8
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    return-void

    .line 142
    :pswitch_c4
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    return-void

    .line 139
    :pswitch_d0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    return-void

    .line 136
    :pswitch_dc
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 137
    return-void

    .line 133
    :pswitch_e8
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    return-void

    nop

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_dc
        :pswitch_d0
        :pswitch_c4
        :pswitch_b8
        :pswitch_ac
        :pswitch_97
        :pswitch_86
        :pswitch_6a
        :pswitch_50
        :pswitch_4c
        :pswitch_4b
        :pswitch_4b
        :pswitch_d
    .end packed-switch
.end method

.method private a(I)Z
    .registers 7

    .line 100
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 102
    :goto_6
    iget-object v2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 103
    iget v3, v1, Lcom/tencent/bugly/proguard/i$a;->b:I

    if-le p1, v3, :cond_2b

    iget-byte v3, v1, Lcom/tencent/bugly/proguard/i$a;->a:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1b

    goto :goto_2b

    .line 105
    :cond_1b
    iget-object v3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget-byte v2, v1, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/i;->a(B)V

    .line 107
    goto :goto_6

    .line 104
    :cond_2b
    :goto_2b
    iget v1, v1, Lcom/tencent/bugly/proguard/i$a;->b:I
    :try_end_2d
    .catch Lcom/tencent/bugly/proguard/g; {:try_start_1 .. :try_end_2d} :catch_34
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_2d} :catch_32

    if-ne p1, v1, :cond_31

    const/4 p1, 0x1

    return p1

    :cond_31
    return v0

    .line 109
    :catch_32
    move-exception p1

    goto :goto_36

    .line 108
    :catch_34
    move-exception p1

    .line 110
    nop

    .line 111
    :goto_36
    return v0
.end method

.method private a([Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IZ)[TT;"
        }
    .end annotation

    .line 797
    if-eqz p1, :cond_d

    array-length v0, p1

    if-eqz v0, :cond_d

    .line 799
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 798
    :cond_d
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "unable to get type of key and value."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)[TT;"
        }
    .end annotation

    .line 818
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 819
    new-instance p2, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p2}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 820
    iget-object p3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 821
    iget-byte p2, p2, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch p2, :pswitch_data_5e

    .line 834
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 823
    :pswitch_1d
    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    .line 824
    if-ltz v0, :cond_3c

    .line 826
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 827
    move v2, p2

    :goto_30
    if-ge v2, v0, :cond_3b

    .line 828
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    .line 829
    aput-object v3, v1, v2

    .line 827
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 831
    :cond_3b
    return-object v1

    .line 825
    :cond_3c
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "size invalid: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 836
    :cond_51
    if-nez p3, :cond_55

    .line 839
    const/4 p1, 0x0

    return-object p1

    .line 837
    :cond_55
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_5e
    .packed-switch 0x9
        :pswitch_1d
    .end packed-switch
.end method

.method private d(IZ)[Z
    .registers 7

    .line 615
    nop

    .line 616
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 617
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 618
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 619
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch p1, :pswitch_data_5c

    .line 630
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 621
    :pswitch_1e
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    .line 622
    if-ltz v0, :cond_3a

    .line 624
    new-array v1, v0, [Z

    .line 625
    move v2, p1

    :goto_29
    if-ge v2, v0, :cond_39

    .line 626
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result v3

    if-eqz v3, :cond_33

    move v3, p2

    goto :goto_34

    :cond_33
    move v3, p1

    :goto_34
    aput-boolean v3, v1, v2

    .line 625
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 627
    :cond_39
    goto :goto_52

    .line 623
    :cond_3a
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 632
    :cond_4f
    if-nez p2, :cond_53

    const/4 v1, 0x0

    .line 635
    :goto_52
    return-object v1

    .line 633
    :cond_53
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_5c
    .packed-switch 0x9
        :pswitch_1e
    .end packed-switch
.end method

.method private e(IZ)[S
    .registers 7

    .line 676
    nop

    .line 677
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 678
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 679
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 680
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch p1, :pswitch_data_58

    .line 691
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 682
    :pswitch_1e
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    .line 683
    if-ltz v0, :cond_37

    .line 685
    new-array v1, v0, [S

    .line 686
    move v2, p1

    :goto_29
    if-ge v2, v0, :cond_36

    .line 687
    aget-short v3, v1, p1

    invoke-virtual {p0, v3, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(SIZ)S

    move-result v3

    aput-short v3, v1, v2

    .line 686
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 688
    :cond_36
    goto :goto_4f

    .line 684
    :cond_37
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 693
    :cond_4c
    if-nez p2, :cond_50

    const/4 v1, 0x0

    .line 696
    :goto_4f
    return-object v1

    .line 694
    :cond_50
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_1e
    .end packed-switch
.end method

.method private f(IZ)[I
    .registers 7

    .line 700
    nop

    .line 701
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 702
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 703
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 704
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch p1, :pswitch_data_58

    .line 715
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 706
    :pswitch_1e
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    .line 707
    if-ltz v0, :cond_37

    .line 709
    new-array v1, v0, [I

    .line 710
    move v2, p1

    :goto_29
    if-ge v2, v0, :cond_36

    .line 711
    aget v3, v1, p1

    invoke-virtual {p0, v3, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v3

    aput v3, v1, v2

    .line 710
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 712
    :cond_36
    goto :goto_4f

    .line 708
    :cond_37
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 717
    :cond_4c
    if-nez p2, :cond_50

    const/4 v1, 0x0

    .line 720
    :goto_4f
    return-object v1

    .line 718
    :cond_50
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_1e
    .end packed-switch
.end method

.method private g(IZ)[J
    .registers 8

    .line 724
    nop

    .line 725
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 726
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 727
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 728
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch p1, :pswitch_data_58

    .line 739
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 730
    :pswitch_1e
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    .line 731
    if-ltz v0, :cond_37

    .line 733
    new-array v1, v0, [J

    .line 734
    move v2, p1

    :goto_29
    if-ge v2, v0, :cond_36

    .line 735
    aget-wide v3, v1, p1

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(JIZ)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 734
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 736
    :cond_36
    goto :goto_4f

    .line 732
    :cond_37
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 741
    :cond_4c
    if-nez p2, :cond_50

    const/4 v1, 0x0

    .line 744
    :goto_4f
    return-object v1

    .line 742
    :cond_50
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_1e
    .end packed-switch
.end method

.method private h(IZ)[F
    .registers 7

    .line 748
    nop

    .line 749
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 750
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 751
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 752
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch p1, :pswitch_data_58

    .line 763
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 754
    :pswitch_1e
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    .line 755
    if-ltz v0, :cond_37

    .line 757
    new-array v1, v0, [F

    .line 758
    move v2, p1

    :goto_29
    if-ge v2, v0, :cond_36

    .line 759
    aget v3, v1, p1

    invoke-direct {p0, v3, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(FIZ)F

    move-result v3

    aput v3, v1, v2

    .line 758
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 760
    :cond_36
    goto :goto_4f

    .line 756
    :cond_37
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 765
    :cond_4c
    if-nez p2, :cond_50

    const/4 v1, 0x0

    .line 768
    :goto_4f
    return-object v1

    .line 766
    :cond_50
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_1e
    .end packed-switch
.end method

.method private i(IZ)[D
    .registers 8

    .line 772
    nop

    .line 773
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 774
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 775
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 776
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch p1, :pswitch_data_58

    .line 787
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 778
    :pswitch_1e
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    .line 779
    if-ltz v0, :cond_37

    .line 781
    new-array v1, v0, [D

    .line 782
    move v2, p1

    :goto_29
    if-ge v2, v0, :cond_36

    .line 783
    aget-wide v3, v1, p1

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(DIZ)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 784
    :cond_36
    goto :goto_4f

    .line 780
    :cond_37
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 789
    :cond_4c
    if-nez p2, :cond_50

    const/4 v1, 0x0

    .line 792
    :goto_4f
    return-object v1

    .line 790
    :cond_50
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_1e
    .end packed-switch
.end method


# virtual methods
.method public final a(BIZ)B
    .registers 4

    .line 200
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 201
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 202
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 203
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch p1, :sswitch_data_32

    .line 211
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :sswitch_1d
    const/4 p1, 0x0

    .line 206
    goto :goto_28

    .line 208
    :sswitch_1f
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 209
    goto :goto_28

    .line 213
    :cond_26
    if-nez p3, :cond_29

    .line 216
    :goto_28
    return p1

    .line 214
    :cond_29
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_1f
        0xc -> :sswitch_1d
    .end sparse-switch
.end method

.method public final a(IIZ)I
    .registers 4

    .line 243
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 244
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 245
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 246
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch p1, :sswitch_data_40

    .line 260
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :sswitch_1d
    const/4 p1, 0x0

    .line 249
    goto :goto_36

    .line 257
    :sswitch_1f
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 258
    goto :goto_36

    .line 254
    :sswitch_26
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 255
    goto :goto_36

    .line 251
    :sswitch_2d
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 252
    goto :goto_36

    .line 262
    :cond_34
    if-nez p3, :cond_37

    .line 265
    :goto_36
    return p1

    .line 263
    :cond_37
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_40
    .sparse-switch
        0x0 -> :sswitch_2d
        0x1 -> :sswitch_26
        0x2 -> :sswitch_1f
        0xc -> :sswitch_1d
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)I
    .registers 2

    .line 993
    iput-object p1, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    .line 994
    const/4 p1, 0x0

    return p1
.end method

.method public final a(JIZ)J
    .registers 5

    .line 269
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p3

    if-eqz p3, :cond_3f

    .line 270
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 271
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 272
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch p1, :sswitch_data_4a

    .line 289
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :sswitch_1d
    const-wide/16 p1, 0x0

    .line 275
    goto :goto_41

    .line 286
    :sswitch_20
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    .line 287
    goto :goto_41

    .line 283
    :sswitch_27
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long p1, p1

    .line 284
    goto :goto_41

    .line 280
    :sswitch_2f
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    int-to-long p1, p1

    .line 281
    goto :goto_41

    .line 277
    :sswitch_37
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    int-to-long p1, p1

    .line 278
    goto :goto_41

    .line 291
    :cond_3f
    if-nez p4, :cond_42

    .line 294
    :goto_41
    return-wide p1

    .line 292
    :cond_42
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_37
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_27
        0x3 -> :sswitch_20
        0xc -> :sswitch_1d
    .end sparse-switch
.end method

.method public final a(Lcom/tencent/bugly/proguard/k;IZ)Lcom/tencent/bugly/proguard/k;
    .registers 4

    .line 919
    nop

    .line 920
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 922
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/k;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_31

    .line 925
    nop

    .line 927
    new-instance p2, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p2}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 928
    iget-object p3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 929
    iget-byte p2, p2, Lcom/tencent/bugly/proguard/i$a;->a:B

    const/16 p3, 0xa

    if-ne p2, p3, :cond_29

    .line 931
    invoke-virtual {p1, p0}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/i;)V

    .line 932
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/i;->a()V

    .line 933
    goto :goto_3f

    .line 930
    :cond_29
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 923
    :catch_31
    move-exception p1

    .line 924
    new-instance p2, Lcom/tencent/bugly/proguard/g;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p2

    .line 933
    :cond_3c
    if-nez p3, :cond_40

    const/4 p1, 0x0

    .line 936
    :goto_3f
    return-object p1

    .line 934
    :cond_40
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 945
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 946
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 947
    :cond_e
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 948
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result p1

    if-eqz p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 949
    :cond_1e
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2b

    .line 950
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(SIZ)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 951
    :cond_2b
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_38

    .line 952
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p1

    .line 953
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 954
    :cond_38
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_47

    .line 955
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(JIZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 956
    :cond_47
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_55

    .line 957
    const/4 p1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(FIZ)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 958
    :cond_55
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_64

    .line 959
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(DIZ)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 960
    :cond_64
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_71

    .line 961
    invoke-virtual {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 962
    :cond_71
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_83

    .line 963
    check-cast p1, Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    .line 964
    :cond_83
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b5

    .line 965
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_af

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    goto :goto_af

    :cond_92
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9e

    const/4 p1, 0x0

    return-object p1

    :cond_9e
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_a3
    array-length p3, p1

    if-ge v1, p3, :cond_ae

    aget-object p3, p1, v1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    :cond_ae
    return-object p2

    :cond_af
    :goto_af
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 966
    :cond_b5
    instance-of v0, p1, Lcom/tencent/bugly/proguard/k;

    if-eqz v0, :cond_c0

    .line 967
    check-cast p1, Lcom/tencent/bugly/proguard/k;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/k;IZ)Lcom/tencent/bugly/proguard/k;

    move-result-object p1

    return-object p1

    .line 968
    :cond_c0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 969
    instance-of v0, p1, [B

    if-nez v0, :cond_110

    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_d3

    goto :goto_110

    .line 971
    :cond_d3
    instance-of v0, p1, [Z

    if-eqz v0, :cond_dc

    .line 972
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->d(IZ)[Z

    move-result-object p1

    return-object p1

    .line 973
    :cond_dc
    instance-of v0, p1, [S

    if-eqz v0, :cond_e5

    .line 974
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->e(IZ)[S

    move-result-object p1

    return-object p1

    .line 975
    :cond_e5
    instance-of v0, p1, [I

    if-eqz v0, :cond_ee

    .line 976
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->f(IZ)[I

    move-result-object p1

    return-object p1

    .line 977
    :cond_ee
    instance-of v0, p1, [J

    if-eqz v0, :cond_f7

    .line 978
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->g(IZ)[J

    move-result-object p1

    return-object p1

    .line 979
    :cond_f7
    instance-of v0, p1, [F

    if-eqz v0, :cond_100

    .line 980
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->h(IZ)[F

    move-result-object p1

    return-object p1

    .line 981
    :cond_100
    instance-of v0, p1, [D

    if-eqz v0, :cond_109

    .line 982
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->i(IZ)[D

    move-result-object p1

    return-object p1

    .line 984
    :cond_109
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 970
    :cond_110
    :goto_110
    invoke-virtual {p0, p2, p3}, Lcom/tencent/bugly/proguard/i;->c(IZ)[B

    move-result-object p1

    return-object p1

    .line 987
    :cond_115
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "read object error: unsupport type."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/Map;IZ)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;IZ)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method

.method public final a(SIZ)S
    .registers 4

    .line 220
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 221
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 222
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 223
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    sparse-switch p1, :sswitch_data_3a

    .line 234
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :sswitch_1d
    const/4 p1, 0x0

    .line 226
    goto :goto_30

    .line 231
    :sswitch_1f
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 232
    goto :goto_30

    .line 228
    :sswitch_26
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    int-to-short p1, p1

    .line 229
    goto :goto_30

    .line 236
    :cond_2e
    if-nez p3, :cond_31

    .line 239
    :goto_30
    return p1

    .line 237
    :cond_31
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_26
        0x1 -> :sswitch_1f
        0xc -> :sswitch_1d
    .end sparse-switch
.end method

.method public final a([B)V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 63
    :cond_7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    .line 64
    return-void
.end method

.method public final a(IZ)Z
    .registers 4

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result p1

    .line 196
    if-eqz p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    return v0
.end method

.method public final b(IZ)Ljava/lang/String;
    .registers 5

    .line 415
    nop

    .line 416
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 417
    new-instance p1, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 418
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 419
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/i$a;->a:B

    packed-switch p1, :pswitch_data_82

    .line 449
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :pswitch_1e
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 436
    const/high16 p2, 0x6400000

    if-gt p1, p2, :cond_40

    if-ltz p1, :cond_40

    .line 438
    new-array p1, p1, [B

    .line 439
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 441
    :try_start_31
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_38
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_38} :catch_39

    .line 445
    goto :goto_6e

    .line 443
    :catch_39
    move-exception p2

    .line 444
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 447
    goto :goto_79

    .line 437
    :cond_40
    new-instance p2, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String too long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p2

    .line 421
    :pswitch_55
    iget-object p1, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 422
    if-gez p1, :cond_5f

    .line 423
    add-int/lit16 p1, p1, 0x100

    .line 424
    :cond_5f
    new-array p1, p1, [B

    .line 425
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 427
    :try_start_66
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_66 .. :try_end_6d} :catch_6f

    .line 431
    nop

    .line 451
    :goto_6e
    goto :goto_79

    .line 429
    :catch_6f
    move-exception p2

    .line 430
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 433
    goto :goto_79

    .line 451
    :cond_76
    if-nez p2, :cond_7a

    const/4 p2, 0x0

    .line 454
    :goto_79
    return-object p2

    .line 452
    :cond_7a
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_82
    .packed-switch 0x6
        :pswitch_55
        :pswitch_1e
    .end packed-switch
.end method

.method public final c(IZ)[B
    .registers 10

    .line 639
    nop

    .line 640
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 641
    new-instance p2, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {p2}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 642
    iget-object v0, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 643
    iget-byte v0, p2, Lcom/tencent/bugly/proguard/i$a;->a:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_d6

    .line 667
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 645
    :sswitch_20
    new-instance v0, Lcom/tencent/bugly/proguard/i$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i$a;-><init>()V

    .line 646
    iget-object v3, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/i$a;Ljava/nio/ByteBuffer;)I

    .line 647
    iget-byte v3, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    const-string v4, ", "

    const-string v5, ", type: "

    if-nez v3, :cond_74

    .line 650
    invoke-virtual {p0, v2, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v1

    .line 651
    if-ltz v1, :cond_41

    .line 653
    new-array p1, v1, [B

    .line 654
    iget-object p2, p0, Lcom/tencent/bugly/proguard/i;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 655
    goto/16 :goto_cd

    .line 652
    :cond_41
    new-instance v2, Lcom/tencent/bugly/proguard/g;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "invalid size, tag: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-byte p2, p2, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-byte p2, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v2

    .line 648
    :cond_74
    new-instance v1, Lcom/tencent/bugly/proguard/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type mismatch, tag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-byte p2, p2, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-byte p2, v0, Lcom/tencent/bugly/proguard/i$a;->a:B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v1

    .line 658
    :sswitch_9d
    invoke-virtual {p0, v2, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result p1

    .line 659
    if-ltz p1, :cond_b5

    .line 661
    new-array p2, p1, [B

    .line 662
    move v0, v2

    :goto_a6
    if-ge v0, p1, :cond_b3

    .line 663
    aget-byte v3, p2, v2

    invoke-virtual {p0, v3, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(BIZ)B

    move-result v3

    aput-byte v3, p2, v0

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 664
    :cond_b3
    move-object p1, p2

    goto :goto_cd

    .line 660
    :cond_b5
    new-instance p2, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p2

    .line 669
    :cond_ca
    if-nez p2, :cond_ce

    const/4 p1, 0x0

    .line 672
    :goto_cd
    return-object p1

    .line 670
    :cond_ce
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_d6
    .sparse-switch
        0x9 -> :sswitch_9d
        0xd -> :sswitch_20
    .end sparse-switch
.end method
