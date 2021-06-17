.class public Lcom/umeng/commonsdk/statistics/proto/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lcom/umeng/analytics/pro/aq;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/Response$c;,
        Lcom/umeng/commonsdk/statistics/proto/Response$d;,
        Lcom/umeng/commonsdk/statistics/proto/Response$a;,
        Lcom/umeng/commonsdk/statistics/proto/Response$b;,
        Lcom/umeng/commonsdk/statistics/proto/Response$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/analytics/pro/aq<",
        "Lcom/umeng/commonsdk/statistics/proto/Response;",
        "Lcom/umeng/commonsdk/statistics/proto/Response$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final IMPRINT_FIELD_DESC:Lcom/umeng/analytics/pro/bk;

.field private static final MSG_FIELD_DESC:Lcom/umeng/analytics/pro/bk;

.field private static final RESP_CODE_FIELD_DESC:Lcom/umeng/analytics/pro/bk;

.field private static final STRUCT_DESC:Lcom/umeng/analytics/pro/bu;

.field private static final __RESP_CODE_ISSET_ID:I = 0x0

.field public static final metaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/statistics/proto/Response$e;",
            "Lcom/umeng/analytics/pro/bc;",
            ">;"
        }
    .end annotation
.end field

.field private static final schemes:Ljava/util/Map;
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

.field private static final serialVersionUID:J = -0x3f22482b0751777fL


# instance fields
.field private __isset_bitfield:B

.field public imprint:Lcom/umeng/commonsdk/statistics/proto/d;

.field public msg:Ljava/lang/String;

.field private optionals:[Lcom/umeng/commonsdk/statistics/proto/Response$e;

.field public resp_code:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 41
    new-instance v0, Lcom/umeng/analytics/pro/bu;

    const-string v1, "Response"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->STRUCT_DESC:Lcom/umeng/analytics/pro/bu;

    .line 44
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v1, "resp_code"

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->RESP_CODE_FIELD_DESC:Lcom/umeng/analytics/pro/bk;

    .line 46
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v4, "msg"

    const/16 v5, 0xb

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->MSG_FIELD_DESC:Lcom/umeng/analytics/pro/bk;

    .line 48
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    const-string v7, "imprint"

    const/16 v8, 0xc

    const/4 v9, 0x3

    invoke-direct {v0, v7, v8, v9}, Lcom/umeng/analytics/pro/bk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->IMPRINT_FIELD_DESC:Lcom/umeng/analytics/pro/bk;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/Map;

    .line 55
    const-class v9, Lcom/umeng/analytics/pro/bz;

    new-instance v10, Lcom/umeng/commonsdk/statistics/proto/Response$b;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/umeng/commonsdk/statistics/proto/Response$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-class v9, Lcom/umeng/analytics/pro/ca;

    new-instance v10, Lcom/umeng/commonsdk/statistics/proto/Response$d;

    invoke-direct {v10, v11}, Lcom/umeng/commonsdk/statistics/proto/Response$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/util/EnumMap;

    const-class v9, Lcom/umeng/commonsdk/statistics/proto/Response$e;

    invoke-direct {v0, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 141
    sget-object v9, Lcom/umeng/commonsdk/statistics/proto/Response$e;->a:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    new-instance v10, Lcom/umeng/analytics/pro/bc;

    new-instance v11, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v11, v2}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v10, v1, v3, v11}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;->b:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    new-instance v2, Lcom/umeng/analytics/pro/bc;

    new-instance v3, Lcom/umeng/analytics/pro/bd;

    invoke-direct {v3, v5}, Lcom/umeng/analytics/pro/bd;-><init>(B)V

    invoke-direct {v2, v4, v6, v3}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/Response$e;->c:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    new-instance v2, Lcom/umeng/analytics/pro/bc;

    new-instance v3, Lcom/umeng/analytics/pro/bh;

    const-class v4, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v3, v8, v4}, Lcom/umeng/analytics/pro/bh;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v7, v6, v3}, Lcom/umeng/analytics/pro/bc;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bd;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->metaDataMap:Ljava/util/Map;

    .line 154
    const-class v1, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/bc;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 134
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/commonsdk/statistics/proto/Response$e;

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/Response$e;->b:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    aput-object v2, v1, v0

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response$e;->c:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->optionals:[Lcom/umeng/commonsdk/statistics/proto/Response$e;

    .line 158
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 161
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/Response;-><init>()V

    .line 162
    iput p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 163
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .registers 5

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 134
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/commonsdk/statistics/proto/Response$e;

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/Response$e;->b:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    aput-object v2, v1, v0

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response$e;->c:Lcom/umeng/commonsdk/statistics/proto/Response$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->optionals:[Lcom/umeng/commonsdk/statistics/proto/Response$e;

    .line 170
    iget-byte v0, p1, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 171
    iget v0, p1, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    iput v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 172
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetMsg()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 173
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 175
    :cond_26
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetImprint()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 176
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d;

    iget-object p1, p1, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>(Lcom/umeng/commonsdk/statistics/proto/d;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 178
    :cond_35
    return-void
.end method

.method static synthetic access$300()Lcom/umeng/analytics/pro/bu;
    .registers 1

    .line 38
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->STRUCT_DESC:Lcom/umeng/analytics/pro/bu;

    return-object v0
.end method

.method static synthetic access$400()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 38
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->RESP_CODE_FIELD_DESC:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic access$500()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 38
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->MSG_FIELD_DESC:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method static synthetic access$600()Lcom/umeng/analytics/pro/bk;
    .registers 1

    .line 38
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->IMPRINT_FIELD_DESC:Lcom/umeng/analytics/pro/bk;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    :try_start_1
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 344
    new-instance v0, Lcom/umeng/analytics/pro/bj;

    new-instance v1, Lcom/umeng/analytics/pro/cb;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/cb;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bj;-><init>(Lcom/umeng/analytics/pro/cd;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->read(Lcom/umeng/analytics/pro/bp;)V
    :try_end_10
    .catch Lcom/umeng/analytics/pro/aw; {:try_start_1 .. :try_end_10} :catch_12

    .line 348
    nop

    .line 349
    return-void

    .line 346
    :catch_12
    move-exception p1

    .line 347
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aw;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/pro/bj;

    new-instance v1, Lcom/umeng/analytics/pro/cb;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/cb;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bj;-><init>(Lcom/umeng/analytics/pro/cd;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->write(Lcom/umeng/analytics/pro/bp;)V
    :try_end_d
    .catch Lcom/umeng/analytics/pro/aw; {:try_start_0 .. :try_end_d} :catch_f

    .line 336
    nop

    .line 337
    return-void

    .line 334
    :catch_f
    move-exception p1

    .line 335
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/aw;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    .line 187
    iput v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 190
    return-void
.end method

.method public bridge synthetic deepCopy()Lcom/umeng/analytics/pro/aq;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/Response;->deepCopy()Lcom/umeng/commonsdk/statistics/proto/Response;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcom/umeng/commonsdk/statistics/proto/Response;
    .registers 2

    .line 181
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/Response;-><init>(Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-object v0
.end method

.method public bridge synthetic fieldForId(I)Lcom/umeng/analytics/pro/ax;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->fieldForId(I)Lcom/umeng/commonsdk/statistics/proto/Response$e;

    move-result-object p1

    return-object p1
.end method

.method public fieldForId(I)Lcom/umeng/commonsdk/statistics/proto/Response$e;
    .registers 2

    .line 273
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/Response$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/Response$e;

    move-result-object p1

    return-object p1
.end method

.method public getImprint()Lcom/umeng/commonsdk/statistics/proto/d;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResp_code()I
    .registers 2

    .line 193
    iget v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    return v0
.end method

.method public isSetImprint()Z
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSetMsg()Z
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSetResp_code()Z
    .registers 3

    .line 211
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/an;->a(BI)Z

    move-result v0

    return v0
.end method

.method public read(Lcom/umeng/analytics/pro/bp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/by;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/by;->b()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/bx;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V

    .line 279
    return-void
.end method

.method public setImprint(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/Response;
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 251
    return-object p0
.end method

.method public setImprintIsSet(Z)V
    .registers 2

    .line 267
    if-nez p1, :cond_5

    .line 268
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 270
    :cond_5
    return-void
.end method

.method public setMsg(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/Response;
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public setMsgIsSet(Z)V
    .registers 2

    .line 240
    if-nez p1, :cond_5

    .line 241
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 243
    :cond_5
    return-void
.end method

.method public setResp_code(I)Lcom/umeng/commonsdk/statistics/proto/Response;
    .registers 2

    .line 197
    iput p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 198
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    .line 199
    return-object p0
.end method

.method public setResp_codeIsSet(Z)V
    .registers 4

    .line 215
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/an;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    nop

    .line 291
    const-string v1, "resp_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    nop

    .line 294
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetMsg()Z

    move-result v1

    const-string v2, "null"

    const-string v3, ", "

    if-eqz v1, :cond_31

    .line 295
    nop

    .line 296
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    if-nez v1, :cond_2e

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 301
    :cond_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetImprint()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 306
    nop

    .line 307
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez v1, :cond_48

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 312
    :cond_48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    :cond_4b
    :goto_4b
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsetImprint()V
    .registers 2

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 256
    return-void
.end method

.method public unsetMsg()V
    .registers 2

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public unsetResp_code()V
    .registers 3

    .line 203
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/an;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->__isset_bitfield:B

    .line 204
    return-void
.end method

.method public validate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v0, :cond_7

    .line 326
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/d;->l()V

    .line 328
    :cond_7
    return-void
.end method

.method public write(Lcom/umeng/analytics/pro/bp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/Response;->schemes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/by;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/by;->b()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/bx;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V

    .line 284
    return-void
.end method
