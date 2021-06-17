.class public Lcom/tendcloud/tenddata/game/cn;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/cn$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/cn;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static p:Lorg/json/JSONObject;


# instance fields
.field private i:Ljava/lang/String;

.field private k:Lcom/tendcloud/tenddata/game/cn$a;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 387
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    .line 405
    :try_start_3
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->a()Lcom/tendcloud/tenddata/game/cn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    .line 408
    goto :goto_10

    .line 406
    :catchall_f
    move-exception v0

    .line 415
    :goto_10
    const-string v0, "account"

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->b:Ljava/lang/String;

    .line 417
    const-string v0, "accountId"

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->c:Ljava/lang/String;

    .line 418
    const-string v0, "name"

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->d:Ljava/lang/String;

    .line 419
    const-string v0, "gender"

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->e:Ljava/lang/String;

    .line 420
    const-string v0, "age"

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->f:Ljava/lang/String;

    .line 421
    const-string v0, "type"

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->g:Ljava/lang/String;

    .line 422
    const-string v0, "accountCus"

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->h:Ljava/lang/String;

    .line 425
    const-string v0, "default"

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    sget-object v0, Lcom/tendcloud/tenddata/game/cn$a;->UNKNOWN:Lcom/tendcloud/tenddata/game/cn$a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->k:Lcom/tendcloud/tenddata/game/cn$a;

    .line 401
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/cn;
    .registers 2

    .line 390
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    if-nez v0, :cond_17

    .line 391
    const-class v0, Lcom/tendcloud/tenddata/game/cn;

    monitor-enter v0

    .line 392
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    if-nez v1, :cond_12

    .line 393
    new-instance v1, Lcom/tendcloud/tenddata/game/cn;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/cn;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    .line 395
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 397
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    return-object v0
.end method

.method private a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 7

    .line 105
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object v0

    invoke-static {p3}, Lcom/tendcloud/tenddata/game/as;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/tendcloud/tenddata/game/du;->setSessionId(Ljava/lang/String;)V

    .line 106
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3}, Ljava/util/TreeMap;-><init>()V

    .line 107
    const-string v0, "accountId"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "gender"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "age"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 113
    const-string v1, "level"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "gameServer"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p2}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_77

    .line 116
    const-string p1, "missionId"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_77
    const-string p1, "custom"

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lcom/tendcloud/tenddata/game/du;->setAccount(Lorg/json/JSONObject;)V
    :try_end_8d
    .catchall {:try_start_0 .. :try_end_8d} :catchall_8e

    .line 124
    goto :goto_92

    .line 121
    :catchall_8e
    move-exception p1

    .line 123
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 126
    :goto_92
    return-void
.end method

.method private a(Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 77
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/dk;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dk;-><init>()V

    .line 78
    sget-object v1, Lcom/tendcloud/tenddata/game/dk$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/game/dk$a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dk;->b:Lcom/tendcloud/tenddata/game/dk$a;

    .line 79
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/dk;->a:Lcom/tendcloud/tenddata/game/a;

    .line 80
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    .line 83
    goto :goto_14

    .line 81
    :catchall_13
    move-exception p1

    .line 84
    :goto_14
    return-void
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 87
    if-nez p3, :cond_3

    .line 88
    return-void

    .line 90
    :cond_3
    if-eqz p0, :cond_33

    if-eqz p1, :cond_33

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_33

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 91
    new-instance v0, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    .line 92
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 94
    if-eqz p2, :cond_2a

    instance-of p0, p2, Ljava/util/Map;

    if-eqz p0, :cond_2a

    .line 95
    check-cast p2, Ljava/util/Map;

    iput-object p2, v0, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    .line 97
    :cond_2a
    iput-object p3, v0, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 98
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    .line 101
    :cond_33
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .line 146
    :try_start_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->i:Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_64

    .line 148
    if-eqz p1, :cond_63

    .line 150
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 152
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->l:Ljava/lang/String;

    .line 154
    :cond_1d
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 155
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cn$a;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/cn$a;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->k:Lcom/tendcloud/tenddata/game/cn$a;

    .line 157
    :cond_31
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 158
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/game/cn;->m:I

    .line 160
    :cond_41
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 161
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->n:Ljava/lang/String;

    .line 163
    :cond_51
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 164
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;
    :try_end_61
    .catchall {:try_start_8 .. :try_end_61} :catchall_62

    .line 168
    :cond_61
    goto :goto_63

    .line 166
    :catchall_62
    move-exception p1

    .line 173
    :cond_63
    :goto_63
    goto :goto_68

    .line 170
    :catchall_64
    move-exception p1

    .line 172
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 175
    :goto_68
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    const-class v0, Lcom/tendcloud/tenddata/game/cn;

    monitor-enter v0

    .line 235
    :try_start_3
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->setLastRoleName(Ljava/lang/String;)V

    .line 236
    const/4 v1, 0x0

    sput-object v1, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    .line 238
    sput-object p0, Lcom/tendcloud/tenddata/game/cn;->j:Ljava/lang/String;

    .line 239
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_4d

    .line 240
    if-eqz p0, :cond_2b

    .line 242
    :try_start_11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    .line 243
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cn;->b(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_1b} :catch_1c
    .catchall {:try_start_11 .. :try_end_1b} :catchall_4d

    .line 246
    :goto_1b
    goto :goto_4c

    .line 244
    :catch_1c
    move-exception p0

    .line 245
    const/4 p1, 0x1

    :try_start_1e
    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    goto :goto_1b

    .line 248
    :cond_2b
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    sput-object p0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    .line 249
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->c()V

    .line 250
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->e()Ljava/util/Map;

    move-result-object p0

    .line 251
    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->b:Ljava/lang/String;

    const-string v2, "roleCreate"

    invoke-static {v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/cn;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    .line 252
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lcom/tendcloud/tenddata/game/du;->setSubaccount(Lorg/json/JSONObject;)V
    :try_end_4c
    .catchall {:try_start_1e .. :try_end_4c} :catchall_4d

    .line 258
    :goto_4c
    goto :goto_4e

    .line 256
    :catchall_4d
    move-exception p0

    .line 259
    :goto_4e
    monitor-exit v0

    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .registers 2

    .line 66
    if-eqz p1, :cond_b

    .line 67
    :try_start_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_9

    return p1

    .line 69
    :catchall_9
    move-exception p1

    goto :goto_c

    .line 71
    :cond_b
    nop

    .line 72
    :goto_c
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .registers 6

    .line 130
    :try_start_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->d()Ljava/util/Map;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 132
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "domain"

    sget-object v4, Lcom/tendcloud/tenddata/game/cn;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "action"

    const-string v4, "update"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 137
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/du;->setAccount(Lorg/json/JSONObject;)V
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_49

    .line 141
    goto :goto_4d

    .line 138
    :catchall_49
    move-exception v0

    .line 140
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 142
    :goto_4d
    return-void
.end method

.method private static b(Lcom/tendcloud/tenddata/game/a;)V
    .registers 4

    .line 376
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->e()Ljava/util/Map;

    move-result-object v0

    .line 378
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/du;->setSubaccount(Lorg/json/JSONObject;)V

    .line 380
    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->b:Ljava/lang/String;

    const-string v2, "roleUpdate"

    invoke-static {v1, v2, v0, p0}, Lcom/tendcloud/tenddata/game/cn;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    .line 384
    goto :goto_1c

    .line 381
    :catchall_18
    move-exception p0

    .line 383
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 385
    :goto_1c
    return-void
.end method

.method private static c()V
    .registers 2

    .line 317
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->setLastRoleName(Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->j:Ljava/lang/String;

    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/as;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method private d()Ljava/util/Map;
    .registers 4

    .line 322
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 324
    :try_start_5
    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cn;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget v1, p0, Lcom/tendcloud/tenddata/game/cn;->m:I

    if-eqz v1, :cond_19

    .line 326
    sget-object v2, Lcom/tendcloud/tenddata/game/cn;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_19
    const-string v1, "UNKNOWN"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cn;->k:Lcom/tendcloud/tenddata/game/cn$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cn$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 329
    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cn;->k:Lcom/tendcloud/tenddata/game/cn$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cn$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_32
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cn;->l:Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 332
    sget-object v2, Lcom/tendcloud/tenddata/game/cn;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_3b
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cn;->n:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 335
    sget-object v2, Lcom/tendcloud/tenddata/game/cn;->g:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_44
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_55

    .line 338
    const-string v1, "custom"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_56

    .line 343
    :cond_55
    goto :goto_5a

    .line 340
    :catchall_56
    move-exception v1

    .line 342
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 344
    :goto_5a
    return-object v0
.end method

.method private static e()Ljava/util/Map;
    .registers 3

    .line 348
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 350
    :try_start_5
    const-string v1, "name"

    sget-object v2, Lcom/tendcloud/tenddata/game/cn;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 352
    const-string v1, "custom"

    sget-object v2, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    .line 357
    :cond_1d
    goto :goto_22

    .line 354
    :catchall_1e
    move-exception v1

    .line 356
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 358
    :goto_22
    return-object v0
.end method

.method private static f()V
    .registers 3

    .line 363
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->e()Ljava/util/Map;

    move-result-object v0

    .line 365
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/du;->setSubaccount(Lorg/json/JSONObject;)V

    .line 367
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cn;->b(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 371
    goto :goto_19

    .line 368
    :catchall_15
    move-exception v0

    .line 370
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 372
    :goto_19
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;I)V
    .registers 4

    monitor-enter p0

    .line 277
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    .line 278
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1b

    .line 281
    :cond_c
    :try_start_c
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 282
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->c()V

    .line 283
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->f()V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    .line 286
    goto :goto_19

    .line 284
    :catchall_18
    move-exception p1

    .line 287
    :goto_19
    monitor-exit p0

    return-void

    .line 276
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 263
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    .line 264
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1b

    .line 267
    :cond_c
    :try_start_c
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->c()V

    .line 269
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->f()V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    .line 272
    goto :goto_19

    .line 270
    :catchall_18
    move-exception p1

    .line 273
    :goto_19
    monitor-exit p0

    return-void

    .line 262
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;I)V
    .registers 4

    monitor-enter p0

    .line 304
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    .line 305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_18

    .line 308
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->b()V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    .line 312
    goto :goto_16

    .line 310
    :catchall_15
    move-exception p1

    .line 313
    :goto_16
    monitor-exit p0

    return-void

    .line 303
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 291
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    .line 292
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_18

    .line 295
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->b()V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    .line 299
    goto :goto_16

    .line 297
    :catchall_15
    move-exception p1

    .line 300
    :goto_16
    monitor-exit p0

    return-void

    .line 290
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onTDEBEventAccount(Lcom/tendcloud/tenddata/game/zz$a;)V
    .registers 10

    .line 25
    const-string v0, "missionId"

    if-eqz p1, :cond_88

    :try_start_4
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    if-eqz v1, :cond_88

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1d

    goto :goto_88

    .line 30
    :cond_1d
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    iget-object v2, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/a;

    .line 32
    iget-object v3, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    iget-object v4, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v5, "domain"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 34
    iget-object v5, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "action"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 35
    iget-object v6, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v7, "immediate"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 39
    if-eqz v1, :cond_74

    instance-of v7, v1, Lcom/tendcloud/tenddata/TDGAAccount;

    if-eqz v7, :cond_74

    .line 40
    iget-object v7, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6d

    .line 41
    iget-object p1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    check-cast v1, Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-direct {p0, v1, p1, v2}, Lcom/tendcloud/tenddata/game/cn;->a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 43
    goto :goto_74

    .line 44
    :cond_6d
    check-cast v1, Lcom/tendcloud/tenddata/TDGAAccount;

    const-string p1, ""

    invoke-direct {p0, v1, p1, v2}, Lcom/tendcloud/tenddata/game/cn;->a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 49
    :cond_74
    :goto_74
    if-eqz v5, :cond_82

    .line 50
    invoke-static {v4, v5, v3, v2}, Lcom/tendcloud/tenddata/game/cn;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    .line 51
    invoke-direct {p0, v6}, Lcom/tendcloud/tenddata/game/cn;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 52
    invoke-direct {p0, v2}, Lcom/tendcloud/tenddata/game/cn;->a(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_82
    .catchall {:try_start_4 .. :try_end_82} :catchall_83

    .line 61
    :cond_82
    goto :goto_87

    .line 58
    :catchall_83
    move-exception p1

    .line 60
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 62
    :goto_87
    return-void

    .line 28
    :cond_88
    :goto_88
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .registers 3

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->n:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 221
    :cond_a
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->n:Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->b()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 227
    :cond_f
    goto :goto_14

    .line 224
    :catchall_10
    move-exception p1

    .line 226
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 228
    :goto_14
    return-void
.end method

.method public setAge(I)V
    .registers 3

    .line 207
    :try_start_0
    iget v0, p0, Lcom/tendcloud/tenddata/game/cn;->m:I

    if-eq v0, p1, :cond_9

    .line 208
    iput p1, p0, Lcom/tendcloud/tenddata/game/cn;->m:I

    .line 209
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->b()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 214
    :cond_9
    goto :goto_e

    .line 211
    :catchall_a
    move-exception p1

    .line 213
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 215
    :goto_e
    return-void
.end method

.method public setGender(Lcom/tendcloud/tenddata/game/cn$a;)V
    .registers 3

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->k:Lcom/tendcloud/tenddata/game/cn$a;

    if-eq v0, p1, :cond_9

    .line 195
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->k:Lcom/tendcloud/tenddata/game/cn$a;

    .line 196
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->b()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 201
    :cond_9
    goto :goto_e

    .line 198
    :catchall_a
    move-exception p1

    .line 200
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 202
    :goto_e
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->l:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 182
    :cond_a
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->l:Ljava/lang/String;

    .line 183
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->b()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 188
    :cond_f
    goto :goto_14

    .line 185
    :catchall_10
    move-exception p1

    .line 187
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 189
    :goto_14
    return-void
.end method
