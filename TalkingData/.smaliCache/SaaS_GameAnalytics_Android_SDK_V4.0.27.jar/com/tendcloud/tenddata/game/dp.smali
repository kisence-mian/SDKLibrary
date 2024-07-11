.class public Lcom/tendcloud/tenddata/game/dp;
.super Ljava/lang/Object;
.source "td"


# static fields
.field static a:Ljava/util/HashMap;

.field static b:Ljava/util/HashMap;

.field static c:Ljava/lang/String;

.field static d:[B

.field private static volatile e:Lcom/tendcloud/tenddata/game/dp;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dp;->a:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dp;->b:Ljava/util/HashMap;

    .line 27
    const-string v0, "utf-8"

    sput-object v0, Lcom/tendcloud/tenddata/game/dp;->c:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/dp;->e:Lcom/tendcloud/tenddata/game/dp;

    .line 166
    :try_start_15
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/dp;->a()Lcom/tendcloud/tenddata/game/dp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_21

    .line 169
    goto :goto_22

    .line 167
    :catchall_21
    move-exception v0

    .line 170
    :goto_22
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/dp;->d:[B

    goto :goto_26

    .line 160
    :cond_1a
    const-class v0, Lcom/tendcloud/tenddata/game/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/dp;->d:[B

    .line 162
    :goto_26
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/dp;
    .registers 2

    .line 145
    sget-object v0, Lcom/tendcloud/tenddata/game/dp;->e:Lcom/tendcloud/tenddata/game/dp;

    if-nez v0, :cond_17

    .line 146
    const-class v0, Lcom/tendcloud/tenddata/game/dp;

    monitor-enter v0

    .line 147
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/dp;->e:Lcom/tendcloud/tenddata/game/dp;

    if-nez v1, :cond_12

    .line 148
    new-instance v1, Lcom/tendcloud/tenddata/game/dp;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dp;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/dp;->e:Lcom/tendcloud/tenddata/game/dp;

    .line 150
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 152
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/dp;->e:Lcom/tendcloud/tenddata/game/dp;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tendcloud/tenddata/game/a;)Ljava/util/TreeSet;
    .registers 9

    .line 80
    nop

    .line 81
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 84
    const/4 v1, 0x0

    :try_start_7
    invoke-static {}, Lcom/tendcloud/tenddata/game/dr;->a()Lcom/tendcloud/tenddata/game/dr;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, p1, v3, v1}, Lcom/tendcloud/tenddata/game/dr;->a(Lcom/tendcloud/tenddata/game/a;ILjava/lang/String;)Ljava/util/TreeSet;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v2

    if-lez v2, :cond_3f

    .line 86
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tendcloud/tenddata/game/dq;
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_8f

    .line 88
    :try_start_29
    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/dq;->c()[B

    move-result-object v5

    sget-object v6, Lcom/tendcloud/tenddata/game/dp;->d:[B

    invoke-static {v5, v6}, Lcom/tendcloud/tenddata/game/bq;->b([B[B)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tendcloud/tenddata/game/dq;->writeData([B)V
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_37

    .line 91
    goto :goto_38

    .line 89
    :catchall_37
    move-exception v4

    .line 92
    :goto_38
    goto :goto_1d

    .line 93
    :cond_39
    :try_start_39
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 98
    :cond_3f
    if-nez v1, :cond_43

    const/4 v2, 0x0

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v2

    .line 99
    :goto_47
    if-ge v2, v3, :cond_83

    .line 100
    invoke-static {}, Lcom/tendcloud/tenddata/game/dr;->a()Lcom/tendcloud/tenddata/game/dr;

    move-result-object v4

    sub-int/2addr v3, v2

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->getRootFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p1, v3, v2}, Lcom/tendcloud/tenddata/game/dr;->a(Lcom/tendcloud/tenddata/game/a;ILjava/lang/String;)Ljava/util/TreeSet;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_83

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result p1

    if-lez p1, :cond_83

    .line 102
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/dq;
    :try_end_6e
    .catchall {:try_start_39 .. :try_end_6e} :catchall_8f

    .line 104
    :try_start_6e
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/dq;->c()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bz;->b([B)[B

    move-result-object v3

    .line 105
    if-eqz v3, :cond_80

    array-length v4, v3

    if-nez v4, :cond_7c

    goto :goto_80

    .line 108
    :cond_7c
    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/dq;->writeData([B)V
    :try_end_7f
    .catchall {:try_start_6e .. :try_end_7f} :catchall_81

    .line 111
    goto :goto_82

    .line 106
    :cond_80
    :goto_80
    goto :goto_62

    .line 109
    :catchall_81
    move-exception v2

    .line 112
    :goto_82
    goto :goto_62

    .line 115
    :cond_83
    :try_start_83
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p1

    if-lez p1, :cond_8e

    if-eqz v1, :cond_8e

    .line 116
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_8f

    .line 121
    :cond_8e
    goto :goto_93

    .line 118
    :catchall_8f
    move-exception p1

    .line 120
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 122
    :goto_93
    return-object v1
.end method

.method public final declared-synchronized onTDEBEventDataStore(Lcom/tendcloud/tenddata/game/dl;)V
    .registers 7

    monitor-enter p0

    .line 32
    if-nez p1, :cond_5

    .line 34
    monitor-exit p0

    return-void

    .line 37
    :cond_5
    :try_start_5
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->getMessageFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNIFIED_SDK_JSON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 38
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_8f

    if-nez v0, :cond_19

    .line 39
    monitor-exit p0

    return-void

    .line 41
    :cond_19
    :try_start_19
    new-instance v0, Lcom/tendcloud/tenddata/game/dw;

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/dw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/dw;->setData(Ljava/util/Map;)V

    .line 43
    const/4 v1, 0x0

    .line 44
    iget-object v2, p1, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 45
    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    iget-object v4, p1, Lcom/tendcloud/tenddata/game/dl;->e:Landroid/util/Pair;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/tendcloud/tenddata/game/em;->a(Lcom/tendcloud/tenddata/game/dw;ZLcom/tendcloud/tenddata/game/a;Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_8f

    .line 47
    :cond_43
    if-nez v1, :cond_47

    .line 48
    monitor-exit p0

    return-void

    .line 50
    :cond_47
    :try_start_47
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bz;->a([B)[B

    move-result-object v0

    .line 56
    new-instance v1, Lcom/tendcloud/tenddata/game/dq;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/game/dq;-><init>([B)V

    .line 57
    invoke-static {}, Lcom/tendcloud/tenddata/game/dr;->a()Lcom/tendcloud/tenddata/game/dr;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/tendcloud/tenddata/game/dr;->a(Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/dl;)V

    goto :goto_8d

    .line 60
    :cond_60
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->getMessageFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STRING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 61
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/dl;->g:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_74
    .catchall {:try_start_47 .. :try_end_74} :catchall_8f

    if-eqz v1, :cond_78

    .line 63
    monitor-exit p0

    return-void

    .line 65
    :cond_78
    :try_start_78
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bz;->a([B)[B

    move-result-object v0

    .line 68
    new-instance v1, Lcom/tendcloud/tenddata/game/dq;

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/game/dq;-><init>([B)V

    .line 69
    invoke-static {}, Lcom/tendcloud/tenddata/game/dr;->a()Lcom/tendcloud/tenddata/game/dr;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/tendcloud/tenddata/game/dr;->a(Lcom/tendcloud/tenddata/game/dq;Lcom/tendcloud/tenddata/game/dl;)V
    :try_end_8c
    .catchall {:try_start_78 .. :try_end_8c} :catchall_8f

    goto :goto_8e

    .line 60
    :cond_8d
    :goto_8d
    nop

    .line 75
    :goto_8e
    goto :goto_93

    .line 72
    :catchall_8f
    move-exception p1

    .line 74
    :try_start_90
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_95

    .line 77
    :goto_93
    monitor-exit p0

    return-void

    .line 31
    :catchall_95
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendMessageFaild(Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 136
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/dr;->a()Lcom/tendcloud/tenddata/game/dr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/dr;->clearDataCache(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 139
    goto :goto_9

    .line 137
    :catchall_8
    move-exception p1

    .line 140
    :goto_9
    return-void
.end method

.method public sendMessageSuccess(Lcom/tendcloud/tenddata/game/a;)V
    .registers 3

    .line 127
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/dr;->a()Lcom/tendcloud/tenddata/game/dr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/dr;->confirmRead(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 131
    goto :goto_c

    .line 128
    :catchall_8
    move-exception p1

    .line 130
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 132
    :goto_c
    return-void
.end method
