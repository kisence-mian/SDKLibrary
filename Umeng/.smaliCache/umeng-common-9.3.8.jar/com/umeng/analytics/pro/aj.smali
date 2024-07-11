.class public Lcom/umeng/analytics/pro/aj;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Lcom/umeng/analytics/pro/aq;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/aj$c;,
        Lcom/umeng/analytics/pro/aj$d;,
        Lcom/umeng/analytics/pro/aj$a;,
        Lcom/umeng/analytics/pro/aj$b;,
        Lcom/umeng/analytics/pro/aj$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/analytics/pro/aq<",
        "Lcom/umeng/analytics/pro/aj;",
        "Lcom/umeng/analytics/pro/aj$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final A:I = 0x2

.field private static final B:I = 0x3

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/analytics/pro/aj$e;",
            "Lcom/umeng/analytics/pro/bc;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:J = 0x5d55b037b877db0L

.field private static final m:Lcom/umeng/analytics/pro/bu;

.field private static final n:Lcom/umeng/analytics/pro/bk;

.field private static final o:Lcom/umeng/analytics/pro/bk;

.field private static final p:Lcom/umeng/analytics/pro/bk;

.field private static final q:Lcom/umeng/analytics/pro/bk;

.field private static final r:Lcom/umeng/analytics/pro/bk;

.field private static final s:Lcom/umeng/analytics/pro/bk;

.field private static final t:Lcom/umeng/analytics/pro/bk;

.field private static final u:Lcom/umeng/analytics/pro/bk;

.field private static final v:Lcom/umeng/analytics/pro/bk;

.field private static final w:Lcom/umeng/analytics/pro/bk;

.field private static final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/bx;",
            ">;",
            "Lcom/umeng/analytics/pro/by;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:I = 0x0

.field private static final z:I = 0x1


# instance fields
.field private C:B

.field private D:[Lcom/umeng/analytics/pro/aj$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 43
    new-instance v0, Lcom/umeng/analytics/pro/bu;

    const-string v1, "UMEnvelope"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/pro/aj;->m:Lcom/umeng/analytics/pro/bu;

    .line 46
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v1, "version"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/aj;->n:Lcom/umeng/analytics/pro/bk;

    .line 48
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v4, "address"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/aj;->o:Lcom/umeng/analytics/pro/bk;

    .line 50
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v6, "signature"

    const/4 v7, 0x3

    invoke-direct {v0, v6, v2, v7}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/aj;->p:Lcom/umeng/analytics/pro/bk;

    .line 52
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v7, "serial_num"

    const/16 v8, 0x8

    const/4 v9, 0x4

    invoke-direct {v0, v7, v8, v9}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/aj;->q:Lcom/umeng/analytics/pro/bk;

    .line 54
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v9, "ts_secs"

    const/4 v10, 0x5

    invoke-direct {v0, v9, v8, v10}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/aj;->r:Lcom/umeng/analytics/pro/bk;

    .line 56
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v10, "length"

    const/4 v11, 0x6

    invoke-direct {v0, v10, v8, v11}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/aj;->s:Lcom/umeng/analytics/pro/bk;

    .line 58
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v11, "entity"

    const/4 v12, 0x7

    invoke-direct {v0, v11, v2, v12}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/aj;->t:Lcom/umeng/analytics/pro/bk;

    .line 60
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v12, "guid"

    invoke-direct {v0, v12, v2, v8}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/aj;->u:Lcom/umeng/analytics/pro/bk;

    .line 62
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v13, "checksum"

    const/16 v14, 0x9

    invoke-direct {v0, v13, v2, v14}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/aj;->v:Lcom/umeng/analytics/pro/bk;

    .line 64
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v14, "codex"

    const/16 v15, 0xa

    invoke-direct {v0, v14, v8, v15}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/aj;->w:Lcom/umeng/analytics/pro/bk;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/aj;->x:Ljava/util/Map;

    .line 71
    const-class v15, Lcom/umeng/analytics/pro/bz;

    new-instance v5, Lcom/umeng/analytics/pro/aj$b;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lcom/umeng/analytics/pro/aj$b;-><init>(Lcom/umeng/analytics/pro/aj$1;)V

    invoke-interface {v0, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-class v5, Lcom/umeng/analytics/pro/ca;

    new-instance v15, Lcom/umeng/analytics/pro/aj$d;

    invoke-direct {v15, v8}, Lcom/umeng/analytics/pro/aj$d;-><init>(Lcom/umeng/analytics/pro/aj$1;)V

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/util/EnumMap;

    const-class v5, Lcom/umeng/analytics/pro/aj$e;

    invoke-direct {v0, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 183
    sget-object v5, Lcom/umeng/analytics/pro/aj$e;->a:Lcom/umeng/analytics/pro/aj$e;

    new-instance v8, Lcom/umeng/analytics/pro/bc;

    new-instance v15, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v15, v2}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v8, v1, v3, v15}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Lcom/umeng/analytics/pro/aj$e;->b:Lcom/umeng/analytics/pro/aj$e;

    new-instance v5, Lcom/umeng/analytics/pro/bc;

    new-instance v8, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v8, v2}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v5, v4, v3, v8}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lcom/umeng/analytics/pro/aj$e;->c:Lcom/umeng/analytics/pro/aj$e;

    new-instance v4, Lcom/umeng/analytics/pro/bc;

    new-instance v5, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v5, v2}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v4, v6, v3, v5}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/umeng/analytics/pro/aj$e;->d:Lcom/umeng/analytics/pro/aj$e;

    new-instance v4, Lcom/umeng/analytics/pro/bc;

    new-instance v5, Lcom/umeng/analytics/pro/bd;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v4, v7, v3, v5}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lcom/umeng/analytics/pro/aj$e;->e:Lcom/umeng/analytics/pro/aj$e;

    new-instance v4, Lcom/umeng/analytics/pro/bc;

    new-instance v5, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v5, v6}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v4, v9, v3, v5}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lcom/umeng/analytics/pro/aj$e;->f:Lcom/umeng/analytics/pro/aj$e;

    new-instance v4, Lcom/umeng/analytics/pro/bc;

    new-instance v5, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v5, v6}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v4, v10, v3, v5}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/umeng/analytics/pro/aj$e;->g:Lcom/umeng/analytics/pro/aj$e;

    new-instance v4, Lcom/umeng/analytics/pro/bc;

    new-instance v5, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v5, v2, v3}, Lcom/umeng/analytics/pro/bd;-><init>(BZ)V

    invoke-direct {v4, v11, v3, v5}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lcom/umeng/analytics/pro/aj$e;->h:Lcom/umeng/analytics/pro/aj$e;

    new-instance v4, Lcom/umeng/analytics/pro/bc;

    new-instance v5, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v5, v2}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v4, v12, v3, v5}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/umeng/analytics/pro/aj$e;->i:Lcom/umeng/analytics/pro/aj$e;

    new-instance v4, Lcom/umeng/analytics/pro/bc;

    new-instance v5, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v5, v2}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v4, v13, v3, v5}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lcom/umeng/analytics/pro/aj$e;->j:Lcom/umeng/analytics/pro/aj$e;

    new-instance v2, Lcom/umeng/analytics/pro/bc;

    new-instance v3, Lcom/umeng/analytics/pro/bd;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    const/4 v4, 0x2

    invoke-direct {v2, v14, v4, v3}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/aj;->k:Ljava/util/Map;

    .line 221
    const-class v1, Lcom/umeng/analytics/pro/aj;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/bc;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 222
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    .line 176
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/analytics/pro/aj$e;

    sget-object v2, Lcom/umeng/analytics/pro/aj$e;->j:Lcom/umeng/analytics/pro/aj$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/pro/aj;->D:[Lcom/umeng/analytics/pro/aj$e;

    .line 225
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/aj;)V
    .registers 5

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    .line 176
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/analytics/pro/aj$e;

    sget-object v2, Lcom/umeng/analytics/pro/aj$e;->j:Lcom/umeng/analytics/pro/aj$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/analytics/pro/aj;->D:[Lcom/umeng/analytics/pro/aj$e;

    .line 248
    iget-byte v0, p1, Lcom/umeng/analytics/pro/aj;->C:B

    iput-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    .line 249
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 250
    iget-object v0, p1, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    .line 252
    :cond_1d
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aj;->g()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 253
    iget-object v0, p1, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    .line 255
    :cond_27
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aj;->j()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 256
    iget-object v0, p1, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    .line 258
    :cond_31
    iget v0, p1, Lcom/umeng/analytics/pro/aj;->d:I

    iput v0, p0, Lcom/umeng/analytics/pro/aj;->d:I

    .line 259
    iget v0, p1, Lcom/umeng/analytics/pro/aj;->e:I

    iput v0, p0, Lcom/umeng/analytics/pro/aj;->e:I

    .line 260
    iget v0, p1, Lcom/umeng/analytics/pro/aj;->f:I

    iput v0, p0, Lcom/umeng/analytics/pro/aj;->f:I

    .line 261
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aj;->w()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 262
    iget-object v0, p1, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/analytics/pro/ar;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    .line 265
    :cond_4b
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aj;->z()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 266
    iget-object v0, p1, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    .line 268
    :cond_55
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aj;->C()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 269
    iget-object v0, p1, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    .line 271
    :cond_5f
    iget p1, p1, Lcom/umeng/analytics/pro/aj;->j:I

    iput p1, p0, Lcom/umeng/analytics/pro/aj;->j:I

    .line 272
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 229
    invoke-direct {p0}, Lcom/umeng/analytics/pro/aj;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    .line 233
    iput p4, p0, Lcom/umeng/analytics/pro/aj;->d:I

    .line 234
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/aj;->d(Z)V

    .line 235
    iput p5, p0, Lcom/umeng/analytics/pro/aj;->e:I

    .line 236
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/aj;->e(Z)V

    .line 237
    iput p6, p0, Lcom/umeng/analytics/pro/aj;->f:I

    .line 238
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/aj;->f(Z)V

    .line 239
    iput-object p7, p0, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    .line 240
    iput-object p8, p0, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    .line 241
    iput-object p9, p0, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    .line 242
    return-void
.end method

.method static synthetic H()Lcom/umeng/analytics/pro/bu;
    .registers 1

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/aj;->m:Lcom/umeng/analytics/pro/bu;

    return-object v0
.end method

.method static synthetic I()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/aj;->n:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic J()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/aj;->o:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic K()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/aj;->p:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic L()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/aj;->q:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic M()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/aj;->r:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic N()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/aj;->s:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic O()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/aj;->t:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic P()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/aj;->u:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic Q()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/aj;->v:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic R()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/aj;->w:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 717
    const/4 v0, 0x0

    :try_start_1
    iput-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    .line 718
    new-instance v0, Lcom/umeng/analytics/pro/bj;

    new-instance v1, Lcom/umeng/analytics/pro/cb;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/cb;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bj;-><init>(Lcom/umeng/analytics/pro/cd;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/aj;->read(Lcom/umeng/analytics/pro/bp;)V
    :try_end_10
    .catch Lcom/umeng/analytics/pro/aw; {:try_start_1 .. :try_end_10} :catch_12

    .line 722
    nop

    .line 723
    return-void

    .line 720
    :catch_12
    move-exception p1

    .line 721
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aw;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/pro/bj;

    new-instance v1, Lcom/umeng/analytics/pro/cb;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/cb;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bj;-><init>(Lcom/umeng/analytics/pro/cd;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/aj;->write(Lcom/umeng/analytics/pro/bp;)V
    :try_end_d
    .catch Lcom/umeng/analytics/pro/aw; {:try_start_0 .. :try_end_d} :catch_f

    .line 710
    nop

    .line 711
    return-void

    .line 708
    :catch_f
    move-exception p1

    .line 709
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aw;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    return-object v0
.end method

.method public B()V
    .registers 2

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public C()Z
    .registers 2

    .line 537
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public D()I
    .registers 2

    .line 547
    iget v0, p0, Lcom/umeng/analytics/pro/aj;->j:I

    return v0
.end method

.method public E()V
    .registers 3

    .line 557
    iget-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/an;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    .line 558
    return-void
.end method

.method public F()Z
    .registers 3

    .line 565
    iget-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/an;->a(BI)Z

    move-result v0

    return v0
.end method

.method public G()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    if-eqz v0, :cond_aa

    .line 675
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    if-eqz v0, :cond_8d

    .line 679
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    if-eqz v0, :cond_70

    .line 689
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_53

    .line 693
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 697
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 702
    return-void

    .line 698
    :cond_19
    new-instance v0, Lcom/umeng/analytics/pro/bq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 699
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_36
    new-instance v0, Lcom/umeng/analytics/pro/bq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 695
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_53
    new-instance v0, Lcom/umeng/analytics/pro/bq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'entity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 691
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_70
    new-instance v0, Lcom/umeng/analytics/pro/bq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'signature\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 681
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_8d
    new-instance v0, Lcom/umeng/analytics/pro/bq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'address\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 677
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_aa
    new-instance v0, Lcom/umeng/analytics/pro/bq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 673
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lcom/umeng/analytics/pro/aj;
    .registers 2

    .line 275
    new-instance v0, Lcom/umeng/analytics/pro/aj;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/aj;-><init>(Lcom/umeng/analytics/pro/aj;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/pro/aj;
    .registers 2

    .line 382
    iput p1, p0, Lcom/umeng/analytics/pro/aj;->d:I

    .line 383
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/aj;->d(Z)V

    .line 384
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/pro/aj;
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    .line 302
    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/umeng/analytics/pro/aj;
    .registers 2

    .line 470
    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    .line 471
    return-object p0
.end method

.method public a([B)Lcom/umeng/analytics/pro/aj;
    .registers 2

    .line 465
    if-nez p1, :cond_6

    const/4 p1, 0x0

    check-cast p1, Ljava/nio/ByteBuffer;

    goto :goto_a

    :cond_6
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_a
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/aj;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/analytics/pro/aj;

    .line 466
    return-object p0
.end method

.method public a(Z)V
    .registers 2

    .line 318
    if-nez p1, :cond_5

    .line 319
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    .line 321
    :cond_5
    return-void
.end method

.method public b(I)Lcom/umeng/analytics/pro/aj;
    .registers 2

    .line 408
    iput p1, p0, Lcom/umeng/analytics/pro/aj;->e:I

    .line 409
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/aj;->e(Z)V

    .line 410
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/analytics/pro/aj;
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .registers 2

    .line 345
    if-nez p1, :cond_5

    .line 346
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    .line 348
    :cond_5
    return-void
.end method

.method public c(I)Lcom/umeng/analytics/pro/aj;
    .registers 2

    .line 434
    iput p1, p0, Lcom/umeng/analytics/pro/aj;->f:I

    .line 435
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/aj;->f(Z)V

    .line 436
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/analytics/pro/aj;
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    .line 356
    return-object p0
.end method

.method public c()V
    .registers 2

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 372
    if-nez p1, :cond_5

    .line 373
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    .line 375
    :cond_5
    return-void
.end method

.method public clear()V
    .registers 3

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    .line 282
    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    .line 283
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/aj;->d(Z)V

    .line 284
    iput v1, p0, Lcom/umeng/analytics/pro/aj;->d:I

    .line 285
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/aj;->e(Z)V

    .line 286
    iput v1, p0, Lcom/umeng/analytics/pro/aj;->e:I

    .line 287
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/aj;->f(Z)V

    .line 288
    iput v1, p0, Lcom/umeng/analytics/pro/aj;->f:I

    .line 289
    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    .line 290
    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    .line 291
    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    .line 292
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/aj;->j(Z)V

    .line 293
    iput v1, p0, Lcom/umeng/analytics/pro/aj;->j:I

    .line 294
    return-void
.end method

.method public d(I)Lcom/umeng/analytics/pro/aj;
    .registers 2

    .line 551
    iput p1, p0, Lcom/umeng/analytics/pro/aj;->j:I

    .line 552
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/aj;->j(Z)V

    .line 553
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/umeng/analytics/pro/aj;
    .registers 2

    .line 497
    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    .line 498
    return-object p0
.end method

.method public d(Z)V
    .registers 4

    .line 400
    iget-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/an;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/pro/aj;->C:B

    .line 401
    return-void
.end method

.method public d()Z
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic deepCopy()Lcom/umeng/analytics/pro/aq;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aj;->a()Lcom/umeng/analytics/pro/aj;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/umeng/analytics/pro/aj$e;
    .registers 2

    .line 573
    invoke-static {p1}, Lcom/umeng/analytics/pro/aj$e;->a(I)Lcom/umeng/analytics/pro/aj$e;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/umeng/analytics/pro/aj;
    .registers 2

    .line 524
    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    .line 525
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Z)V
    .registers 4

    .line 426
    iget-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/an;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/pro/aj;->C:B

    .line 427
    return-void
.end method

.method public f()V
    .registers 2

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public f(Z)V
    .registers 4

    .line 452
    iget-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/an;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/pro/aj;->C:B

    .line 453
    return-void
.end method

.method public synthetic fieldForId(I)Lcom/umeng/analytics/pro/ax;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/aj;->e(I)Lcom/umeng/analytics/pro/aj$e;

    move-result-object p1

    return-object p1
.end method

.method public g(Z)V
    .registers 2

    .line 487
    if-nez p1, :cond_5

    .line 488
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    .line 490
    :cond_5
    return-void
.end method

.method public g()Z
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h(Z)V
    .registers 2

    .line 514
    if-nez p1, :cond_5

    .line 515
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    .line 517
    :cond_5
    return-void
.end method

.method public i()V
    .registers 2

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public i(Z)V
    .registers 2

    .line 541
    if-nez p1, :cond_5

    .line 542
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    .line 544
    :cond_5
    return-void
.end method

.method public j(Z)V
    .registers 4

    .line 569
    iget-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/an;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/analytics/pro/aj;->C:B

    .line 570
    return-void
.end method

.method public j()Z
    .registers 2

    .line 368
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public k()I
    .registers 2

    .line 378
    iget v0, p0, Lcom/umeng/analytics/pro/aj;->d:I

    return v0
.end method

.method public l()V
    .registers 3

    .line 388
    iget-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/an;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    .line 389
    return-void
.end method

.method public m()Z
    .registers 3

    .line 396
    iget-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/an;->a(BI)Z

    move-result v0

    return v0
.end method

.method public n()I
    .registers 2

    .line 404
    iget v0, p0, Lcom/umeng/analytics/pro/aj;->e:I

    return v0
.end method

.method public o()V
    .registers 3

    .line 414
    iget-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/an;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    .line 415
    return-void
.end method

.method public p()Z
    .registers 3

    .line 422
    iget-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/an;->a(BI)Z

    move-result v0

    return v0
.end method

.method public q()I
    .registers 2

    .line 430
    iget v0, p0, Lcom/umeng/analytics/pro/aj;->f:I

    return v0
.end method

.method public r()V
    .registers 3

    .line 440
    iget-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/an;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    .line 441
    return-void
.end method

.method public read(Lcom/umeng/analytics/pro/bp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 578
    sget-object v0, Lcom/umeng/analytics/pro/aj;->x:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/by;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/by;->b()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/bx;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V

    .line 579
    return-void
.end method

.method public s()Z
    .registers 3

    .line 448
    iget-byte v0, p0, Lcom/umeng/analytics/pro/aj;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/an;->a(BI)Z

    move-result v0

    return v0
.end method

.method public t()[B
    .registers 2

    .line 456
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/analytics/pro/ar;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/aj;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/analytics/pro/aj;

    .line 457
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMEnvelope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    nop

    .line 591
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v1, p0, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_17

    .line 593
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 595
    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :goto_1a
    nop

    .line 598
    nop

    .line 599
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v3, "address:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-object v3, p0, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    if-nez v3, :cond_2e

    .line 602
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 604
    :cond_2e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :goto_31
    nop

    .line 607
    nop

    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v3, "signature:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    iget-object v3, p0, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    if-nez v3, :cond_43

    .line 611
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 613
    :cond_43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :goto_46
    nop

    .line 616
    nop

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v3, "serial_num:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget v3, p0, Lcom/umeng/analytics/pro/aj;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    nop

    .line 621
    nop

    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string v3, "ts_secs:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget v3, p0, Lcom/umeng/analytics/pro/aj;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 625
    nop

    .line 626
    nop

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string v3, "length:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget v3, p0, Lcom/umeng/analytics/pro/aj;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    nop

    .line 631
    nop

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    const-string v3, "entity:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    iget-object v3, p0, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_85

    .line 635
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    .line 637
    :cond_85
    invoke-static {v3, v0}, Lcom/umeng/analytics/pro/ar;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    .line 639
    :goto_88
    nop

    .line 640
    nop

    .line 641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string v3, "guid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-object v3, p0, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    if-nez v3, :cond_9a

    .line 644
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9d

    .line 646
    :cond_9a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :goto_9d
    nop

    .line 649
    nop

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string v3, "checksum:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    iget-object v3, p0, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    if-nez v3, :cond_af

    .line 653
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b2

    .line 655
    :cond_af
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :goto_b2
    nop

    .line 658
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/aj;->F()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 659
    nop

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v1, "codex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    iget v1, p0, Lcom/umeng/analytics/pro/aj;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    :cond_c7
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/nio/ByteBuffer;
    .registers 2

    .line 461
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public v()V
    .registers 2

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    .line 476
    return-void
.end method

.method public w()Z
    .registers 2

    .line 483
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public write(Lcom/umeng/analytics/pro/bp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 583
    sget-object v0, Lcom/umeng/analytics/pro/aj;->x:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/by;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/by;->b()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/bx;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V

    .line 584
    return-void
.end method

.method public x()Ljava/lang/String;
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    return-object v0
.end method

.method public y()V
    .registers 2

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    .line 503
    return-void
.end method

.method public z()Z
    .registers 2

    .line 510
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
