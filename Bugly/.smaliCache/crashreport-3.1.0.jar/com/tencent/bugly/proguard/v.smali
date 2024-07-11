.class public final Lcom/tencent/bugly/proguard/v;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:[B

.field private final f:Lcom/tencent/bugly/crashreport/common/info/a;

.field private final g:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private final h:Lcom/tencent/bugly/proguard/s;

.field private final i:Lcom/tencent/bugly/proguard/u;

.field private final j:I

.field private final k:Lcom/tencent/bugly/proguard/t;

.field private final l:Lcom/tencent/bugly/proguard/t;

.field private m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:J

.field private r:J

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;ZIIZLjava/util/Map;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/t;",
            "ZIIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    move-object v0, p0

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v3, 0x2

    iput v3, v0, Lcom/tencent/bugly/proguard/v;->a:I

    .line 44
    const/16 v3, 0x7530

    iput v3, v0, Lcom/tencent/bugly/proguard/v;->b:I

    .line 57
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/String;

    .line 61
    const/4 v4, 0x0

    iput v4, v0, Lcom/tencent/bugly/proguard/v;->p:I

    .line 62
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/tencent/bugly/proguard/v;->q:J

    .line 63
    iput-wide v5, v0, Lcom/tencent/bugly/proguard/v;->r:J

    .line 66
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/tencent/bugly/proguard/v;->s:Z

    .line 67
    iput-boolean v4, v0, Lcom/tencent/bugly/proguard/v;->t:Z

    .line 106
    move-object v4, p1

    iput-object v4, v0, Lcom/tencent/bugly/proguard/v;->c:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 108
    move-object v5, p4

    iput-object v5, v0, Lcom/tencent/bugly/proguard/v;->e:[B

    .line 109
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/bugly/proguard/v;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 110
    invoke-static {p1}, Lcom/tencent/bugly/proguard/s;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/s;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/bugly/proguard/v;->h:Lcom/tencent/bugly/proguard/s;

    .line 111
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Lcom/tencent/bugly/proguard/u;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    .line 112
    move v4, p2

    iput v4, v0, Lcom/tencent/bugly/proguard/v;->j:I

    .line 113
    move-object v4, p5

    iput-object v4, v0, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/String;

    .line 114
    move-object v4, p6

    iput-object v4, v0, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/String;

    .line 115
    move-object v4, p7

    iput-object v4, v0, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    .line 116
    iput-object v3, v0, Lcom/tencent/bugly/proguard/v;->l:Lcom/tencent/bugly/proguard/t;

    .line 118
    move v3, p8

    iput-boolean v3, v0, Lcom/tencent/bugly/proguard/v;->s:Z

    .line 119
    move v3, p3

    iput v3, v0, Lcom/tencent/bugly/proguard/v;->d:I

    .line 120
    if-lez v1, :cond_56

    .line 121
    iput v1, v0, Lcom/tencent/bugly/proguard/v;->a:I

    .line 123
    :cond_56
    if-lez v2, :cond_5a

    .line 124
    iput v2, v0, Lcom/tencent/bugly/proguard/v;->b:I

    .line 127
    :cond_5a
    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/v;->t:Z

    .line 128
    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/tencent/bugly/proguard/v;->o:Ljava/util/Map;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;ZZ)V
    .registers 23

    .line 85
    const/4 v9, 0x2

    const/16 v10, 0x7530

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v12}, Lcom/tencent/bugly/proguard/v;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;ZIIZLjava/util/Map;)V

    .line 87
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 495
    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 496
    return-object p0

    .line 499
    :cond_7
    :try_start_7
    const-string v0, "%s?aid=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    return-object p0

    .line 500
    :catchall_1f
    move-exception v0

    .line 501
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 502
    return-object p0
.end method

.method private a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V
    .registers 9

    .line 160
    iget p1, p0, Lcom/tencent/bugly/proguard/v;->d:I

    sparse-switch p1, :sswitch_data_6c

    .line 170
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    .line 167
    :sswitch_a
    nop

    .line 168
    const-string p1, "userinfo"

    goto :goto_11

    .line 163
    :sswitch_e
    nop

    .line 164
    const-string p1, "crash"

    .line 172
    :goto_11
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1f

    .line 173
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "[Upload] Success: %s"

    invoke-static {p1, p3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3c

    .line 175
    :cond_1f
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p4, v2, p1

    const-string p1, "[Upload] Failed to upload(%d) %s: %s"

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 176
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz p1, :cond_3c

    .line 177
    iget-object p1, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    const/4 p3, 0x0

    invoke-virtual {p1, p5, p3}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/aq;)V

    .line 181
    :cond_3c
    :goto_3c
    iget-wide p3, p0, Lcom/tencent/bugly/proguard/v;->q:J

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_5c

    .line 182
    iget-object p1, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean p3, p0, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {p1, p3}, Lcom/tencent/bugly/proguard/u;->a(Z)J

    move-result-wide p3

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->q:J

    add-long/2addr p3, v0

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr p3, v0

    .line 184
    iget-object p1, p0, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean p5, p0, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {p1, p3, p4, p5}, Lcom/tencent/bugly/proguard/u;->a(JZ)V

    .line 187
    :cond_5c
    iget-object p1, p0, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    if-eqz p1, :cond_63

    .line 188
    invoke-interface {p1, p2}, Lcom/tencent/bugly/proguard/t;->a(Z)V

    .line 190
    :cond_63
    iget-object p1, p0, Lcom/tencent/bugly/proguard/v;->l:Lcom/tencent/bugly/proguard/t;

    if-eqz p1, :cond_6a

    .line 191
    invoke-interface {p1, p2}, Lcom/tencent/bugly/proguard/t;->a(Z)V

    .line 193
    :cond_6a
    return-void

    nop

    :sswitch_data_6c
    .sparse-switch
        0x276 -> :sswitch_e
        0x280 -> :sswitch_a
        0x33e -> :sswitch_e
        0x348 -> :sswitch_a
    .end sparse-switch
.end method

.method private static a(Lcom/tencent/bugly/proguard/aq;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z
    .registers 13

    .line 200
    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 201
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "resp == null!"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 202
    return v0

    .line 205
    :cond_b
    iget-byte v1, p0, Lcom/tencent/bugly/proguard/aq;->a:B

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    .line 206
    new-array p1, v2, [Ljava/lang/Object;

    iget-byte p0, p0, Lcom/tencent/bugly/proguard/aq;->a:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "resp result error %d"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 207
    return v0

    .line 210
    :cond_20
    :try_start_20
    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_83

    const-string v3, "UTF-8"

    if-nez v1, :cond_52

    :try_start_2a
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 212
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v4

    sget v5, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const-string v6, "gateway"

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;Z)Z

    .line 215
    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->d(Ljava/lang/String;)V

    .line 217
    :cond_52
    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_82

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/bugly/proguard/aq;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 219
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v4

    sget v5, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const-string v6, "device"

    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;Z)Z

    .line 221
    iget-object v1, p0, Lcom/tencent/bugly/proguard/aq;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->e(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_2a .. :try_end_82} :catchall_83

    .line 225
    :cond_82
    goto :goto_87

    .line 223
    :catchall_83
    move-exception v1

    .line 224
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 226
    :goto_87
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/aq;->e:J

    iput-wide v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->i:J

    .line 229
    iget p1, p0, Lcom/tencent/bugly/proguard/aq;->b:I

    const/16 v1, 0x1fe

    if-ne p1, v1, :cond_c4

    .line 230
    iget-object p1, p0, Lcom/tencent/bugly/proguard/aq;->c:[B

    if-nez p1, :cond_a5

    .line 231
    new-array p1, v2, [Ljava/lang/Object;

    iget p0, p0, Lcom/tencent/bugly/proguard/aq;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "[Upload] Strategy data is null. Response cmd: %d"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 232
    return v0

    .line 235
    :cond_a5
    iget-object p1, p0, Lcom/tencent/bugly/proguard/aq;->c:[B

    const-class v1, Lcom/tencent/bugly/proguard/as;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/a;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/k;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/as;

    .line 237
    if-nez p1, :cond_c1

    .line 238
    new-array p1, v2, [Ljava/lang/Object;

    iget p0, p0, Lcom/tencent/bugly/proguard/aq;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "[Upload] Failed to decode strategy from server. Response cmd: %d"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 240
    return v0

    .line 242
    :cond_c1
    invoke-virtual {p2, p1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/proguard/as;)V

    .line 245
    :cond_c4
    return v2
.end method


# virtual methods
.method public final a(J)V
    .registers 5

    .line 486
    iget v0, p0, Lcom/tencent/bugly/proguard/v;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/v;->p:I

    .line 487
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->q:J

    .line 488
    return-void
.end method

.method public final b(J)V
    .registers 5

    .line 491
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->r:J

    .line 492
    return-void
.end method

.method public final run()V
    .registers 22

    .line 251
    move-object/from16 v7, p0

    const-string v1, "[Upload] Failed to upload for no status header."

    const-string v2, "Bugly-Version"

    const/4 v3, 0x0

    :try_start_7
    iput v3, v7, Lcom/tencent/bugly/proguard/v;->p:I

    .line 252
    const-wide/16 v4, 0x0

    iput-wide v4, v7, Lcom/tencent/bugly/proguard/v;->q:J

    .line 253
    iput-wide v4, v7, Lcom/tencent/bugly/proguard/v;->r:J

    .line 254
    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->e:[B

    .line 257
    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/bugly/crashreport/common/info/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_25

    .line 258
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "network is not available"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 259
    return-void

    .line 261
    :cond_25
    if-eqz v0, :cond_43d

    array-length v6, v0

    if-nez v6, :cond_2c

    goto/16 :goto_43d

    .line 266
    :cond_2c
    const-string v6, "[Upload] Run upload task with cmd: %d"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    iget v10, v7, Lcom/tencent/bugly/proguard/v;->d:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v6, v9}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 268
    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->c:Landroid/content/Context;

    if-eqz v6, :cond_431

    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    if-eqz v6, :cond_431

    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    if-eqz v6, :cond_431

    iget-object v9, v7, Lcom/tencent/bugly/proguard/v;->h:Lcom/tencent/bugly/proguard/s;

    if-nez v9, :cond_4e

    goto/16 :goto_431

    .line 274
    :cond_4e
    invoke-virtual {v6}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v6

    .line 275
    if-nez v6, :cond_60

    .line 276
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "illegal local strategy"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 277
    return-void

    .line 280
    :cond_60
    nop

    .line 282
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 283
    const-string v10, "prodId"

    iget-object v11, v7, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v10, "bundleId"

    iget-object v11, v7, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v11, v11, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v10, "appVer"

    iget-object v11, v7, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v11, v11, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v10, v7, Lcom/tencent/bugly/proguard/v;->o:Ljava/util/Map;

    if-eqz v10, :cond_8a

    .line 289
    invoke-interface {v9, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 293
    :cond_8a
    iget-boolean v10, v7, Lcom/tencent/bugly/proguard/v;->s:Z

    const/4 v11, 0x2

    if-eqz v10, :cond_f6

    .line 295
    const-string v10, "cmd"

    iget v12, v7, Lcom/tencent/bugly/proguard/v;->d:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v10, "platformId"

    invoke-static {v8}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v10, "sdkVer"

    iget-object v12, v7, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "3.1.0"

    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v10, "strategylastUpdateTime"

    iget-wide v12, v6, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v6, v9}, Lcom/tencent/bugly/proguard/u;->a(Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_ce

    .line 303
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "failed to add security info to HTTP headers"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 305
    return-void

    .line 308
    :cond_ce
    invoke-static {v0, v11}, Lcom/tencent/bugly/proguard/z;->a([BI)[B

    move-result-object v0

    .line 309
    if-nez v0, :cond_e0

    .line 310
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "failed to zip request body"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 311
    return-void

    .line 314
    :cond_e0
    iget-object v6, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v6, v0}, Lcom/tencent/bugly/proguard/u;->a([B)[B

    move-result-object v0

    .line 315
    if-nez v0, :cond_f4

    .line 316
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "failed to encrypt request body"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 318
    return-void

    .line 315
    :cond_f4
    move-object v6, v0

    goto :goto_f7

    .line 293
    :cond_f6
    move-object v6, v0

    .line 322
    :goto_f7
    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget v10, v7, Lcom/tencent/bugly/proguard/v;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v10, v12, v13}, Lcom/tencent/bugly/proguard/u;->a(IJ)V

    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    if-eqz v0, :cond_106

    :cond_106
    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->l:Lcom/tencent/bugly/proguard/t;

    if-eqz v0, :cond_10a

    .line 324
    :cond_10a
    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/String;

    .line 325
    const/4 v10, -0x1

    .line 326
    move v13, v3

    move v12, v10

    move v10, v13

    .line 327
    :goto_110
    add-int/lit8 v14, v13, 0x1

    iget v15, v7, Lcom/tencent/bugly/proguard/v;->a:I

    if-ge v13, v15, :cond_425

    .line 328
    if-le v14, v8, :cond_13c

    .line 329
    const-string v10, "[Upload] Failed to upload last time, wait and try(%d) again."

    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v3

    invoke-static {v10, v13}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 331
    iget v10, v7, Lcom/tencent/bugly/proguard/v;->b:I

    int-to-long v4, v10

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/z;->b(J)V

    .line 332
    iget v4, v7, Lcom/tencent/bugly/proguard/v;->a:I

    if-ne v14, v4, :cond_13c

    .line 333
    const-string v0, "[Upload] Use the back-up url at the last time: %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v7, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 336
    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/String;

    .line 340
    :cond_13c
    const-string v4, "[Upload] Send %d bytes"

    new-array v5, v8, [Ljava/lang/Object;

    array-length v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v3

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 341
    iget-boolean v4, v7, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz v4, :cond_154

    .line 342
    invoke-static {v0}, Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_155

    .line 341
    :cond_154
    move-object v4, v0

    .line 344
    :goto_155
    const-string v0, "[Upload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v3

    iget v10, v7, Lcom/tencent/bugly/proguard/v;->d:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v11

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v13, 0x3

    aput-object v10, v5, v13

    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 346
    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->h:Lcom/tencent/bugly/proguard/s;

    invoke-virtual {v0, v4, v6, v7, v9}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/v;Ljava/util/Map;)[B

    move-result-object v0
    :try_end_182
    .catchall {:try_start_7 .. :try_end_182} :catchall_449

    .line 347
    const-string v5, "[Upload] Failed to upload(%d): %s"

    if-nez v0, :cond_19d

    .line 348
    :try_start_186
    const-string v0, "Failed to upload for no response!"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v3

    aput-object v0, v10, v8

    invoke-static {v5, v10}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 350
    nop

    .line 351
    move-object v0, v4

    move v10, v8

    move v13, v14

    const-wide/16 v4, 0x0

    goto/16 :goto_110

    .line 354
    :cond_19d
    iget-object v10, v7, Lcom/tencent/bugly/proguard/v;->h:Lcom/tencent/bugly/proguard/s;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 355
    iget-boolean v15, v7, Lcom/tencent/bugly/proguard/v;->s:Z
    :try_end_1a3
    .catchall {:try_start_186 .. :try_end_1a3} :catchall_449

    if-eqz v15, :cond_355

    .line 356
    const-string v15, "status"

    if-eqz v10, :cond_1f5

    :try_start_1a9
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v16

    if-nez v16, :cond_1b0

    goto :goto_1f5

    :cond_1b0
    invoke-interface {v10, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16
    :try_end_1b4
    .catchall {:try_start_1a9 .. :try_end_1b4} :catchall_449

    const-string v13, "[Upload] Headers does not contain %s"

    if-nez v16, :cond_1c0

    :try_start_1b8
    new-array v11, v8, [Ljava/lang/Object;

    aput-object v15, v11, v3

    invoke-static {v13, v11}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1fe

    :cond_1c0
    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1ce

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v2, v11, v3

    invoke-static {v13, v11}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1fe

    :cond_1ce
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v13, "bugly"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1e8

    const-string v13, "[Upload] Bugly version is not valid: %s"

    new-array v3, v8, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v11, v3, v20

    invoke-static {v13, v3}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1fd

    :cond_1e8
    const-string v3, "[Upload] Bugly version from headers is: %s"

    new-array v13, v8, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v11, v13, v20

    invoke-static {v3, v13}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v3, v8

    goto :goto_1fe

    :cond_1f5
    :goto_1f5
    const-string v3, "[Upload] Headers is empty."

    const/4 v11, 0x0

    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v3, v13}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1fd
    const/4 v3, 0x0

    :goto_1fe
    if-nez v3, :cond_26f

    .line 357
    const-string v0, "[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d)."

    const/4 v3, 0x2

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v13, 0x0

    aput-object v3, v11, v13

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v8

    invoke-static {v0, v11}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 360
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x0

    aput-object v3, v0, v11

    aput-object v1, v0, v8

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 362
    if-eqz v10, :cond_25f

    .line 363
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_236
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 364
    const-string v5, "[key]: %s, [value]: %s"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v11, v13

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v11, v8

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v3, v10}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 366
    goto :goto_236

    .line 368
    :cond_25f
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_265
    .catchall {:try_start_1b8 .. :try_end_265} :catchall_449

    .line 369
    nop

    .line 370
    move-object v0, v4

    move v10, v8

    move v13, v14

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v11, 0x2

    goto/16 :goto_110

    .line 374
    :cond_26f
    :try_start_26f
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_279
    .catchall {:try_start_26f .. :try_end_279} :catchall_326

    .line 376
    :try_start_279
    const-string v3, "[Upload] Status from server is %d (pid=%d | tid=%d)."

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v12, v15

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x2

    aput-object v13, v12, v15

    invoke-static {v3, v12}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_29d
    .catchall {:try_start_279 .. :try_end_29d} :catchall_321

    .line 386
    nop

    .line 388
    if-eqz v11, :cond_31f

    .line 390
    const/4 v1, 0x2

    if-ne v11, v1, :cond_306

    .line 392
    :try_start_2a3
    iget-wide v0, v7, Lcom/tencent/bugly/proguard/v;->q:J

    iget-wide v2, v7, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr v0, v2

    const-wide/16 v17, 0x0

    cmp-long v0, v0, v17

    if-lez v0, :cond_2c3

    .line 393
    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean v1, v7, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Z)J

    move-result-wide v0

    iget-wide v2, v7, Lcom/tencent/bugly/proguard/v;->q:J

    add-long/2addr v0, v2

    iget-wide v2, v7, Lcom/tencent/bugly/proguard/v;->r:J

    add-long/2addr v0, v2

    .line 395
    iget-object v2, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget-boolean v3, v7, Lcom/tencent/bugly/proguard/v;->t:Z

    invoke-virtual {v2, v0, v1, v3}, Lcom/tencent/bugly/proguard/u;->a(JZ)V

    .line 398
    :cond_2c3
    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/aq;)V

    .line 400
    const-string v0, "[Upload] Session ID is invalid, will try again immediately (pid=%d | tid=%d)."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 403
    iget-object v9, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    iget v10, v7, Lcom/tencent/bugly/proguard/v;->j:I

    iget v11, v7, Lcom/tencent/bugly/proguard/v;->d:I

    iget-object v12, v7, Lcom/tencent/bugly/proguard/v;->e:[B

    iget-object v13, v7, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/String;

    iget-object v14, v7, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/String;

    iget-object v15, v7, Lcom/tencent/bugly/proguard/v;->k:Lcom/tencent/bugly/proguard/t;

    iget v0, v7, Lcom/tencent/bugly/proguard/v;->a:I

    iget v1, v7, Lcom/tencent/bugly/proguard/v;->b:I

    const/16 v18, 0x1

    iget-object v2, v7, Lcom/tencent/bugly/proguard/v;->o:Ljava/util/Map;

    move/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v19, v2

    invoke-virtual/range {v9 .. v19}, Lcom/tencent/bugly/proguard/u;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;IIZLjava/util/Map;)V

    return-void

    .line 407
    :cond_306
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status of server is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 412
    return-void

    .line 388
    :cond_31f
    move v12, v11

    goto :goto_355

    .line 379
    :catchall_321
    move-exception v0

    const-wide/16 v17, 0x0

    move v12, v11

    goto :goto_329

    :catchall_326
    move-exception v0

    const-wide/16 v17, 0x0

    .line 381
    :goto_329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[Upload] Failed to upload for format of status header is invalid: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x0

    aput-object v3, v10, v11

    aput-object v0, v10, v8

    invoke-static {v5, v10}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 384
    nop

    .line 385
    move-object v0, v4

    move v10, v8

    move v13, v14

    move-wide/from16 v4, v17

    const/4 v3, 0x0

    const/4 v11, 0x2

    goto/16 :goto_110

    .line 416
    :cond_355
    :goto_355
    const-string v1, "[Upload] Received %d bytes"

    new-array v2, v8, [Ljava/lang/Object;

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 418
    iget-boolean v1, v7, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz v1, :cond_3c8

    .line 419
    array-length v1, v0

    if-nez v1, :cond_3a1

    .line 421
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_373
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_395

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 422
    const-string v2, "[Upload] HTTP headers from server: key = %s, value = %s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 424
    goto :goto_373

    .line 425
    :cond_395
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "response data from server is empty"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 428
    return-void

    .line 431
    :cond_3a1
    iget-object v1, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/u;->b([B)[B

    move-result-object v0

    .line 432
    if-nez v0, :cond_3b5

    .line 433
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "failed to decrypt response from server"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 436
    return-void

    .line 439
    :cond_3b5
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->b([BI)[B

    move-result-object v0

    .line 440
    if-nez v0, :cond_3c8

    .line 441
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "failed unzip(Gzip) response from server"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 444
    return-void

    .line 448
    :cond_3c8
    iget-boolean v1, v7, Lcom/tencent/bugly/proguard/v;->s:Z

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/a;->a([BZ)Lcom/tencent/bugly/proguard/aq;

    move-result-object v2

    .line 451
    if-nez v2, :cond_3dc

    .line 452
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "failed to decode response package"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 455
    return-void

    .line 458
    :cond_3dc
    iget-boolean v0, v7, Lcom/tencent/bugly/proguard/v;->s:Z

    if-eqz v0, :cond_3e5

    .line 460
    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->i:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v0, v12, v2}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/aq;)V

    .line 463
    :cond_3e5
    const-string v0, "[Upload] Response cmd is: %d, length of sBuffer is: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, v2, Lcom/tencent/bugly/proguard/aq;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, v2, Lcom/tencent/bugly/proguard/aq;->c:[B

    if-nez v3, :cond_3f9

    move v3, v4

    goto :goto_3fc

    :cond_3f9
    iget-object v3, v2, Lcom/tencent/bugly/proguard/aq;->c:[B

    array-length v3, v3

    :goto_3fc
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 466
    iget-object v0, v7, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v7, Lcom/tencent/bugly/proguard/v;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v2, v0, v1}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z

    move-result v0

    if-nez v0, :cond_41a

    .line 467
    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "failed to process response package"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 469
    return-void

    .line 473
    :cond_41a
    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "successfully uploaded"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 474
    return-void

    .line 477
    :cond_425
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, "failed after many attempts"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v4, v10

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 482
    return-void

    .line 270
    :cond_431
    :goto_431
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "illegal access error"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V

    .line 271
    return-void

    .line 262
    :cond_43d
    :goto_43d
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "request package is empty!"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/aq;ZILjava/lang/String;I)V
    :try_end_448
    .catchall {:try_start_2a3 .. :try_end_448} :catchall_449

    .line 263
    return-void

    .line 478
    :catchall_449
    move-exception v0

    .line 479
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_453

    .line 480
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 483
    :cond_453
    return-void
.end method
