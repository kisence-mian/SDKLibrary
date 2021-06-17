.class public Lcom/umeng/commonsdk/statistics/proto/e;
.super Ljava/lang/Object;
.source "ImprintValue.java"

# interfaces
.implements Lcom/umeng/analytics/pro/aq;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/e$c;,
        Lcom/umeng/commonsdk/statistics/proto/e$d;,
        Lcom/umeng/commonsdk/statistics/proto/e$a;,
        Lcom/umeng/commonsdk/statistics/proto/e$b;,
        Lcom/umeng/commonsdk/statistics/proto/e$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/analytics/pro/aq<",
        "Lcom/umeng/commonsdk/statistics/proto/e;",
        "Lcom/umeng/commonsdk/statistics/proto/e$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/statistics/proto/e$e;",
            "Lcom/umeng/analytics/pro/bc;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = 0x681b59944df50d21L

.field private static final f:Lcom/umeng/analytics/pro/bu;

.field private static final g:Lcom/umeng/analytics/pro/bk;

.field private static final h:Lcom/umeng/analytics/pro/bk;

.field private static final i:Lcom/umeng/analytics/pro/bk;

.field private static final j:Ljava/util/Map;
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

.field private static final k:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field private l:B

.field private m:[Lcom/umeng/commonsdk/statistics/proto/e$e;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 41
    new-instance v0, Lcom/umeng/analytics/pro/bu;

    const-string v1, "ImprintValue"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->f:Lcom/umeng/analytics/pro/bu;

    .line 44
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v1, "value"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->g:Lcom/umeng/analytics/pro/bk;

    .line 46
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v4, "ts"

    const/16 v5, 0xa

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->h:Lcom/umeng/analytics/pro/bk;

    .line 48
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v7, "guid"

    const/4 v8, 0x3

    invoke-direct {v0, v7, v2, v8}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->i:Lcom/umeng/analytics/pro/bk;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->j:Ljava/util/Map;

    .line 55
    const-class v8, Lcom/umeng/analytics/pro/bz;

    new-instance v9, Lcom/umeng/commonsdk/statistics/proto/e$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/umeng/commonsdk/statistics/proto/e$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/e$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-class v8, Lcom/umeng/analytics/pro/ca;

    new-instance v9, Lcom/umeng/commonsdk/statistics/proto/e$d;

    invoke-direct {v9, v10}, Lcom/umeng/commonsdk/statistics/proto/e$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/e$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/util/EnumMap;

    const-class v8, Lcom/umeng/commonsdk/statistics/proto/e$e;

    invoke-direct {v0, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 141
    sget-object v8, Lcom/umeng/commonsdk/statistics/proto/e$e;->a:Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-instance v9, Lcom/umeng/analytics/pro/bc;

    new-instance v10, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v10, v2}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v9, v1, v6, v10}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/e$e;->b:Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-instance v6, Lcom/umeng/analytics/pro/bc;

    new-instance v8, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v8, v5}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v6, v4, v3, v8}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/e$e;->c:Lcom/umeng/commonsdk/statistics/proto/e$e;

    new-instance v4, Lcom/umeng/analytics/pro/bc;

    new-instance v5, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v5, v2}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v4, v7, v3, v5}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->d:Ljava/util/Map;

    .line 151
    const-class v1, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/bc;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 152
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    .line 134
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/commonsdk/statistics/proto/e$e;

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/e$e;->a:Lcom/umeng/commonsdk/statistics/proto/e$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->m:[Lcom/umeng/commonsdk/statistics/proto/e$e;

    .line 155
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    .line 158
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/e;-><init>()V

    .line 159
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    .line 160
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->b(Z)V

    .line 161
    iput-object p3, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/e;)V
    .registers 5

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    .line 134
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/commonsdk/statistics/proto/e$e;

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/e$e;->a:Lcom/umeng/commonsdk/statistics/proto/e$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->m:[Lcom/umeng/commonsdk/statistics/proto/e$e;

    .line 168
    iget-byte v0, p1, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    .line 169
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 170
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 172
    :cond_1d
    iget-wide v0, p1, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    .line 173
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/e;->j()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 174
    iget-object p1, p1, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    .line 176
    :cond_2b
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    :try_start_1
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    .line 341
    new-instance v0, Lcom/umeng/analytics/pro/bj;

    new-instance v1, Lcom/umeng/analytics/pro/cb;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/cb;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bj;-><init>(Lcom/umeng/analytics/pro/cd;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/e;->read(Lcom/umeng/analytics/pro/bp;)V
    :try_end_10
    .catch Lcom/umeng/analytics/pro/aw; {:try_start_1 .. :try_end_10} :catch_12

    .line 345
    nop

    .line 346
    return-void

    .line 343
    :catch_12
    move-exception p1

    .line 344
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

    .line 329
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/pro/bj;

    new-instance v1, Lcom/umeng/analytics/pro/cb;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/cb;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bj;-><init>(Lcom/umeng/analytics/pro/cd;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/e;->write(Lcom/umeng/analytics/pro/bp;)V
    :try_end_d
    .catch Lcom/umeng/analytics/pro/aw; {:try_start_0 .. :try_end_d} :catch_f

    .line 333
    nop

    .line 334
    return-void

    .line 331
    :catch_f
    move-exception p1

    .line 332
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aw;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic l()Lcom/umeng/analytics/pro/bu;
    .registers 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->f:Lcom/umeng/analytics/pro/bu;

    return-object v0
.end method

.method static synthetic m()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->g:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic n()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->h:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic o()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->i:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/commonsdk/statistics/proto/e$e;
    .registers 2

    .line 271
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/e$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/e$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/commonsdk/statistics/proto/e;
    .registers 2

    .line 179
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/e;-><init>(Lcom/umeng/commonsdk/statistics/proto/e;)V

    return-object v0
.end method

.method public a(J)Lcom/umeng/commonsdk/statistics/proto/e;
    .registers 3

    .line 222
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    .line 223
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->b(Z)V

    .line 224
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/e;
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public a(Z)V
    .registers 2

    .line 212
    if-nez p1, :cond_5

    .line 213
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 215
    :cond_5
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/e;
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    .line 249
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .registers 4

    .line 240
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/an;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    .line 241
    return-void
.end method

.method public c()V
    .registers 2

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 265
    if-nez p1, :cond_5

    .line 266
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    .line 268
    :cond_5
    return-void
.end method

.method public clear()V
    .registers 4

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 185
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/statistics/proto/e;->b(Z)V

    .line 186
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    .line 187
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public d()Z
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

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

    .line 37
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/e;->a()Lcom/umeng/commonsdk/statistics/proto/e;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .registers 3

    .line 218
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    return-wide v0
.end method

.method public f()V
    .registers 3

    .line 228
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/an;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    .line 229
    return-void
.end method

.method public synthetic fieldForId(I)Lcom/umeng/analytics/pro/ax;
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/e;->a(I)Lcom/umeng/commonsdk/statistics/proto/e$e;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .registers 3

    .line 236
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/an;->a(BI)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .registers 2

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public j()Z
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public k()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 325
    return-void

    .line 321
    :cond_5
    new-instance v0, Lcom/umeng/analytics/pro/bq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 322
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Lcom/umeng/analytics/pro/bp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/by;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/by;->b()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/bx;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImprintValue("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    nop

    .line 289
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v1

    const-string v2, "null"

    if-eqz v1, :cond_22

    .line 290
    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    if-nez v1, :cond_1d

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 294
    :cond_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :goto_20
    const/4 v1, 0x0

    goto :goto_23

    .line 289
    :cond_22
    const/4 v1, 0x1

    .line 298
    :goto_23
    const-string v3, ", "

    if-nez v1, :cond_2a

    .line 299
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_2a
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-wide v4, p0, Lcom/umeng/commonsdk/statistics/proto/e;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 302
    nop

    .line 303
    nop

    .line 304
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v1, "guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/e;->c:Ljava/lang/String;

    if-nez v1, :cond_46

    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 309
    :cond_46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :goto_49
    nop

    .line 312
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/umeng/analytics/pro/bp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/by;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/by;->b()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/bx;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V

    .line 282
    return-void
.end method
