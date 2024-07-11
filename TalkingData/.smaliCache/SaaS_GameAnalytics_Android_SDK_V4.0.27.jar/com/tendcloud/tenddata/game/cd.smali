.class public final Lcom/tendcloud/tenddata/game/cd;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static final a:Ljava/lang/String; = "Archimedes_p"

.field private static b:I = 0x0

.field private static final c:I = 0x3b9aca00


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/tendcloud/tenddata/game/cd;->b:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()I
    .registers 2

    .line 35
    sget v0, Lcom/tendcloud/tenddata/game/cd;->b:I

    if-eqz v0, :cond_5

    .line 36
    return v0

    .line 40
    :cond_5
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/az$b;->AES_DATA_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->getFileLock(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/tendcloud/tenddata/game/cd;->b()[[I

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ca;->a([[I)I

    move-result v0

    sput v0, Lcom/tendcloud/tenddata/game/cd;->b:I

    .line 42
    if-nez v0, :cond_2a

    .line 43
    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->b()Ljava/security/SecureRandom;

    move-result-object v0

    const v1, 0x3b9aca00

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    sput v0, Lcom/tendcloud/tenddata/game/cd;->b:I

    .line 44
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cd;->a(I)V

    .line 46
    :cond_2a
    sget v0, Lcom/tendcloud/tenddata/game/cd;->b:I
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_36

    .line 53
    sget-object v1, Lcom/tendcloud/tenddata/game/az$b;->AES_DATA_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 46
    return v0

    .line 48
    :catchall_36
    move-exception v0

    .line 53
    sget-object v0, Lcom/tendcloud/tenddata/game/az$b;->AES_DATA_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 54
    nop

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method private static a(I)V
    .registers 12

    .line 122
    nop

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 125
    :cond_a
    const/4 v3, 0x3

    new-array v4, v3, [I

    .line 126
    const/4 v5, 0x7

    new-array v6, v5, [I

    .line 127
    new-array v7, v5, [I

    .line 128
    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->b()Ljava/security/SecureRandom;

    move-result-object v8

    .line 129
    const/4 v9, 0x0

    :goto_17
    if-ge v9, v3, :cond_24

    .line 130
    const/16 v10, 0x3e8

    invoke-virtual {v8, v10}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v10

    aput v10, v4, v9

    .line 129
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 133
    :cond_24
    const/4 v3, 0x0

    :goto_25
    if-ge v3, v5, :cond_32

    .line 134
    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v9

    aput v9, v6, v3

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 136
    :cond_32
    const/4 v3, 0x0

    :goto_33
    const/4 v8, 0x1

    if-ge v3, v5, :cond_7f

    .line 137
    aget v9, v4, v1

    aget v10, v6, v3

    mul-int v9, v9, v10

    aget v10, v6, v3

    mul-int v9, v9, v10

    aget v10, v6, v3

    mul-int v9, v9, v10

    aget v8, v4, v8

    aget v10, v6, v3

    mul-int v8, v8, v10

    aget v10, v6, v3

    mul-int v8, v8, v10

    add-int/2addr v9, v8

    const/4 v8, 0x2

    aget v8, v4, v8

    aget v10, v6, v3

    mul-int v8, v8, v10

    add-int/2addr v9, v8

    add-int/2addr v9, p0

    aput v9, v7, v3

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v10, v7, v3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 139
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 142
    :cond_7f
    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/game/cd;->a(Ljava/util/ArrayList;I)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 146
    goto :goto_8c

    .line 149
    :cond_86
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    add-int/2addr v2, v8

    .line 151
    if-lt v2, v5, :cond_a

    .line 153
    :goto_8c
    nop

    :goto_8d
    const-string p0, "Archimedes_p"

    const/4 v1, 0x4

    if-ge v8, v1, :cond_b1

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    add-int/lit8 v8, v8, 0x1

    goto :goto_8d

    .line 157
    :cond_b1
    nop

    :goto_b2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_d4

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/game/cc;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    .line 160
    :cond_d4
    nop

    :goto_d5
    const/16 p0, 0x8

    if-ge v2, p0, :cond_fe

    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/cc;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    .line 164
    :cond_fe
    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)Z
    .registers 6

    .line 176
    const/4 v0, 0x0

    :try_start_1
    const-string v1, ""

    .line 177
    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x4

    if-ge v2, v3, :cond_14

    .line 178
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 181
    :cond_14
    const/4 p0, 0x2

    invoke-static {v1, v3, p0}, Lcom/tendcloud/tenddata/game/cd;->a(Ljava/lang/String;II)[[I

    move-result-object p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ca;->a([[I)I

    move-result p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_21

    .line 182
    if-ne p1, p0, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0

    .line 183
    :catchall_21
    move-exception p0

    .line 187
    return v0
.end method

.method private static a(Ljava/lang/String;II)[[I
    .registers 10

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    const-class v2, I

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 193
    nop

    .line 194
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 196
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1a
    if-ge v2, p1, :cond_31

    .line 197
    const/4 v4, 0x0

    :goto_1d
    if-ge v4, p2, :cond_2e

    .line 198
    aget-object v5, v0, v2

    aget-object v6, p0, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    .line 199
    add-int/lit8 v3, v3, 0x1

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 196
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 202
    :cond_31
    return-object v0
.end method

.method private static b()[[I
    .registers 10

    .line 60
    nop

    .line 61
    nop

    .line 62
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_af

    .line 65
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_10
    const-string v6, "Archimedes_p"

    const/4 v7, 0x4

    if-ge v4, v7, :cond_38

    .line 66
    :try_start_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tendcloud/tenddata/game/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 68
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 65
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 72
    :cond_38
    const/4 v4, 0x4

    :goto_39
    const/4 v8, 0x6

    if-ge v4, v8, :cond_5f

    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tendcloud/tenddata/game/cc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 74
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5c

    .line 75
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v5, v5, 0x1

    .line 72
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 79
    :cond_5f
    if-ge v5, v7, :cond_8d

    .line 80
    nop

    :goto_62
    const/16 v4, 0x8

    if-ge v8, v4, :cond_8d

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tendcloud/tenddata/game/cc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8a

    .line 83
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_8a
    add-int/lit8 v8, v8, 0x1

    goto :goto_62

    .line 90
    :cond_8d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v7, :cond_96

    .line 91
    check-cast v0, [[I

    return-object v0

    .line 94
    :cond_96
    nop

    :goto_97
    if-ge v3, v7, :cond_a5

    .line 95
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    .line 97
    :cond_a5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v7, v2}, Lcom/tendcloud/tenddata/game/cd;->a(Ljava/lang/String;II)[[I

    move-result-object v0
    :try_end_ae
    .catchall {:try_start_15 .. :try_end_ae} :catchall_af

    return-object v0

    .line 98
    :catchall_af
    move-exception v1

    .line 103
    check-cast v0, [[I

    return-object v0
.end method
