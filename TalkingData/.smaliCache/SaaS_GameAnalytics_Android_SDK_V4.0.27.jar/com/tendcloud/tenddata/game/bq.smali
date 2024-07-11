.class public Lcom/tendcloud/tenddata/game/bq;
.super Ljava/lang/Object;
.source "td"


# static fields
.field static final a:Z = false

.field public static b:Ljava/lang/String; = null

.field public static c:Z = false

.field static final synthetic d:Z

.field private static final e:Ljava/lang/String; = "UTF-8"

.field private static final f:Ljava/lang/String; = "ge"

.field private static final g:Ljava/lang/String; = "tp"

.field private static final h:Ljava/lang/String; = "rop"

.field private static final i:Ljava/util/concurrent/ExecutorService;

.field private static final j:B = 0x3dt

.field private static final k:Ljava/lang/String; = "US-ASCII"

.field private static final l:[B

.field private static m:[B

.field private static final n:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/bq;->d:Z

    .line 49
    const-string v0, "TDLog"

    sput-object v0, Lcom/tendcloud/tenddata/game/bq;->b:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tendcloud/tenddata/game/bq;->c:Z

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/bq;->i:Ljava/util/concurrent/ExecutorService;

    .line 256
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/tendcloud/tenddata/game/bq;->l:[B

    .line 557
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/tendcloud/tenddata/game/bq;->m:[B

    .line 732
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bq;->n:Ljava/security/SecureRandom;

    return-void

    :array_2a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_4e
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 5

    .line 595
    nop

    .line 597
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "getprop"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 598
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 599
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_51

    .line 600
    nop

    .line 601
    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_4f

    .line 603
    :goto_22
    :try_start_22
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 604
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/high16 v4, 0x6400000

    if-gt v3, v4, :cond_3a

    goto :goto_22

    .line 606
    :cond_3a
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Input stream more than 100 MB size limit"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_42
    .catchall {:try_start_22 .. :try_end_42} :catchall_43

    .line 613
    :cond_42
    goto :goto_44

    .line 609
    :catchall_43
    move-exception v3

    .line 614
    :goto_44
    :try_start_44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_4f

    .line 618
    nop

    .line 620
    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    .line 625
    goto :goto_4e

    .line 621
    :catchall_4d
    move-exception v1

    .line 614
    :goto_4e
    return-object v0

    .line 615
    :catchall_4f
    move-exception v2

    goto :goto_53

    :catchall_51
    move-exception v1

    move-object v1, v0

    .line 616
    :goto_53
    nop

    .line 618
    if-eqz v1, :cond_5b

    .line 620
    :try_start_56
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    .line 625
    goto :goto_5b

    .line 621
    :catchall_5a
    move-exception v1

    .line 616
    :cond_5b
    :goto_5b
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 80
    nop

    .line 82
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_36

    .line 83
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    .line 84
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 85
    if-lez v1, :cond_2e

    .line 86
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 87
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v1, "td_channel_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_34

    .line 95
    if-eqz p0, :cond_2d

    .line 97
    :try_start_28
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    .line 102
    goto :goto_2d

    .line 98
    :catchall_2c
    move-exception p0

    .line 88
    :cond_2d
    :goto_2d
    return-object p1

    .line 95
    :cond_2e
    if-eqz p0, :cond_40

    .line 97
    :try_start_30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_3d

    .line 90
    :catchall_34
    move-exception p1

    goto :goto_38

    :catchall_36
    move-exception p0

    move-object p0, v0

    .line 95
    :goto_38
    if-eqz p0, :cond_40

    .line 97
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3e

    .line 102
    :goto_3d
    goto :goto_40

    .line 98
    :catchall_3e
    move-exception p0

    goto :goto_3d

    .line 105
    :cond_40
    :goto_40
    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 543
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 544
    return-object v0

    .line 546
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 547
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 548
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_29

    return-object p0

    .line 550
    :cond_27
    goto :goto_c

    .line 553
    :cond_28
    goto :goto_2a

    .line 551
    :catchall_29
    move-exception p0

    .line 554
    :goto_2a
    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 164
    if-nez p0, :cond_4

    .line 165
    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_12

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 170
    :cond_12
    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 6

    .line 209
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_20

    aget-byte v3, p0, v2

    .line 211
    and-int/lit16 v3, v3, 0xff

    .line 212
    const/16 v4, 0x10

    if-ge v3, v4, :cond_16

    .line 213
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_16
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 216
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-object p0

    .line 217
    :catchall_25
    move-exception p0

    .line 220
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 3

    .line 393
    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/game/bq;->b([BII)[B

    move-result-object p0

    .line 397
    :try_start_4
    new-instance p1, Ljava/lang/String;

    const-string p2, "US-ASCII"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    return-object p1

    .line 399
    :catchall_c
    move-exception p1

    .line 400
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6

    .line 761
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 762
    return-object v0

    .line 766
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 769
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 770
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 771
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 772
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 773
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_22

    goto :goto_d

    .line 775
    :cond_21
    return-object v2

    .line 776
    :catch_22
    move-exception p0

    .line 781
    return-object v0
.end method

.method public static a(Ljava/lang/Class;Lcom/tendcloud/tenddata/game/bj;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 142
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 144
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 145
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 146
    new-instance v3, Lcom/tendcloud/tenddata/game/bs;

    invoke-direct {v3, p1, v2}, Lcom/tendcloud/tenddata/game/bs;-><init>(Lcom/tendcloud/tenddata/game/bj;Ljava/lang/Object;)V

    .line 156
    nop

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 156
    invoke-static {p0, p1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 159
    invoke-virtual {p2, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/bj;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 112
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 114
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 116
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    .line 117
    new-instance v2, Lcom/tendcloud/tenddata/game/br;

    invoke-direct {v2, p1, v1}, Lcom/tendcloud/tenddata/game/br;-><init>(Lcom/tendcloud/tenddata/game/bj;Ljava/lang/Object;)V

    .line 128
    nop

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 128
    invoke-static {p1, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 132
    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    .line 135
    goto :goto_30

    .line 133
    :catchall_2f
    move-exception p0

    .line 137
    :goto_30
    return-void
.end method

.method public static a(I)Z
    .registers 2

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 1

    .line 521
    const/4 p0, 0x0

    return p0
.end method

.method private static a([BII[BI)[B
    .registers 9

    .line 277
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bq;->l:[B

    .line 291
    const/4 v1, 0x0

    if-lez p2, :cond_c

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    const/4 v3, 0x1

    if-le p2, v3, :cond_19

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_25

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 v1, p0, 0x18

    :cond_25
    or-int p0, v2, v1

    .line 295
    const/16 p1, 0x3d

    packed-switch p2, :pswitch_data_8e

    .line 318
    return-object p3

    .line 297
    :pswitch_2d
    ushr-int/lit8 p1, p0, 0x12

    aget-byte p1, v0, p1

    aput-byte p1, p3, p4

    .line 298
    add-int/lit8 p1, p4, 0x1

    ushr-int/lit8 p2, p0, 0xc

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, v0, p2

    aput-byte p2, p3, p1

    .line 299
    add-int/lit8 p1, p4, 0x2

    ushr-int/lit8 p2, p0, 0x6

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, v0, p2

    aput-byte p2, p3, p1

    .line 300
    add-int/lit8 p4, p4, 0x3

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, v0, p0

    aput-byte p0, p3, p4

    .line 301
    return-object p3

    .line 304
    :pswitch_50
    ushr-int/lit8 p2, p0, 0x12

    aget-byte p2, v0, p2

    aput-byte p2, p3, p4

    .line 305
    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v0, v1

    aput-byte v1, p3, p2

    .line 306
    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, v0, p0

    aput-byte p0, p3, p2

    .line 307
    add-int/lit8 p4, p4, 0x3

    aput-byte p1, p3, p4

    .line 308
    return-object p3

    .line 311
    :pswitch_6f
    ushr-int/lit8 p2, p0, 0x12

    aget-byte p2, v0, p2

    aput-byte p2, p3, p4

    .line 312
    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, v0, p0

    aput-byte p0, p3, p2

    .line 313
    add-int/lit8 p0, p4, 0x2

    aput-byte p1, p3, p0

    .line 314
    add-int/lit8 p4, p4, 0x3

    aput-byte p1, p3, p4
    :try_end_87
    .catchall {:try_start_0 .. :try_end_87} :catchall_88

    .line 315
    return-object p3

    .line 320
    :catchall_88
    move-exception p0

    .line 322
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 324
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_50
        :pswitch_2d
    .end packed-switch
.end method

.method public static a([B[B)[B
    .registers 5

    .line 561
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 562
    const-string p1, "DES"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 563
    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 564
    const-string v0, "DES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 565
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/tendcloud/tenddata/game/bq;->m:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 566
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 567
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    .line 568
    return-object p0

    .line 569
    :catchall_25
    move-exception p0

    .line 573
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 3

    .line 341
    nop

    .line 343
    const/4 v0, 0x0

    :try_start_2
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/tendcloud/tenddata/game/bq;->a([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_8

    .line 346
    goto :goto_e

    .line 344
    :catchall_8
    move-exception p0

    .line 345
    sget-boolean v0, Lcom/tendcloud/tenddata/game/bq;->d:Z

    if-eqz v0, :cond_1c

    const/4 p0, 0x0

    .line 347
    :goto_e
    sget-boolean v0, Lcom/tendcloud/tenddata/game/bq;->d:Z

    if-nez v0, :cond_1b

    if-eqz p0, :cond_15

    goto :goto_1b

    :cond_15
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 348
    :cond_1b
    :goto_1b
    return-object p0

    .line 345
    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static b()Ljava/security/SecureRandom;
    .registers 1

    .line 734
    sget-object v0, Lcom/tendcloud/tenddata/game/bq;->n:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public static b(I)Z
    .registers 2

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 191
    const/16 v0, 0x17

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_19

    const/4 v1, 0x1

    goto :goto_19

    .line 192
    :cond_12
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    if-nez p0, :cond_19

    const/4 v1, 0x1

    .line 191
    :cond_19
    :goto_19
    return v1

    .line 193
    :catchall_1a
    move-exception p0

    .line 196
    return v1
.end method

.method public static final b(Ljava/lang/String;)Z
    .registers 1

    .line 174
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static b([BII)[B
    .registers 12

    .line 430
    if-eqz p0, :cond_95

    .line 434
    if-ltz p1, :cond_7c

    .line 439
    if-ltz p2, :cond_63

    .line 444
    add-int v0, p1, p2

    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-gt v0, v1, :cond_41

    .line 460
    div-int/lit8 v0, p2, 0x3

    const/4 v1, 0x4

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v5, p2, 0x3

    if-lez v5, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    add-int/2addr v0, v1

    .line 465
    new-array v1, v0, [B

    .line 467
    nop

    .line 468
    nop

    .line 469
    add-int/lit8 v5, p2, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 471
    :goto_22
    if-ge v6, v5, :cond_2e

    .line 472
    add-int v8, v6, p1

    invoke-static {p0, v8, v3, v1, v7}, Lcom/tendcloud/tenddata/game/bq;->a([BII[BI)[B

    .line 471
    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v7, v7, 0x4

    goto :goto_22

    .line 483
    :cond_2e
    if-ge v6, p2, :cond_37

    .line 484
    add-int/2addr p1, v6

    sub-int/2addr p2, v6

    invoke-static {p0, p1, p2, v1, v7}, Lcom/tendcloud/tenddata/game/bq;->a([BII[BI)[B

    .line 485
    add-int/lit8 v7, v7, 0x4

    .line 489
    :cond_37
    sub-int/2addr v0, v2

    if-gt v7, v0, :cond_40

    .line 494
    new-array p0, v7, [B

    .line 495
    invoke-static {v1, v4, p0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    return-object p0

    .line 501
    :cond_40
    return-object v1

    .line 445
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v3, [Ljava/lang/Object;

    .line 448
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    .line 446
    const-string p0, "Cannot have offset of %d and length of %d with array of length %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_63
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot have length offset: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 435
    :cond_7c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot have negative offset: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 431
    :cond_95
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot serialize a null array."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_9e

    :goto_9d
    throw p0

    :goto_9e
    goto :goto_9d
.end method

.method public static b([B[B)[B
    .registers 5

    .line 578
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 579
    const-string p1, "DES"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 580
    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 581
    const-string v0, "DES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 582
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/tendcloud/tenddata/game/bq;->m:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 583
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 584
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    .line 585
    return-object p0

    .line 586
    :catchall_25
    move-exception p0

    .line 591
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 528
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    .line 528
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 530
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 531
    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/bq;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    .line 533
    return-object p0

    .line 534
    :catch_15
    move-exception p0

    .line 539
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 179
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 180
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 179
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 181
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    .line 182
    :catch_15
    move-exception p0

    .line 186
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c([B)[B
    .registers 6

    .line 700
    nop

    .line 702
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 703
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 704
    invoke-virtual {v0, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 706
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 708
    const/16 v2, 0x400

    :try_start_14
    new-array v2, v2, [B

    .line 709
    :goto_16
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_25

    .line 710
    invoke-virtual {v0, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    .line 711
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 712
    goto :goto_16

    .line 713
    :cond_25
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_2f

    .line 719
    :try_start_29
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 722
    :goto_2c
    goto :goto_35

    .line 720
    :catchall_2d
    move-exception v1

    .line 723
    goto :goto_35

    .line 714
    :catchall_2f
    move-exception v2

    .line 715
    nop

    .line 719
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_2d

    goto :goto_2c

    .line 725
    :goto_35
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 726
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 631
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 632
    return-object v0

    .line 634
    :cond_4
    nop

    .line 636
    :try_start_5
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 637
    const-string v2, "UTF-8"

    .line 638
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 637
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 639
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-object p0

    .line 640
    :catchall_1a
    move-exception p0

    .line 644
    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .registers 5

    .line 649
    nop

    .line 650
    nop

    .line 652
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/File;

    .line 653
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "td.lock"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 654
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_28

    .line 655
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 656
    :cond_28
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string p1, "rw"

    invoke-direct {p0, v1, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_36

    .line 657
    :try_start_2f
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_34

    .line 672
    goto :goto_42

    .line 658
    :catchall_34
    move-exception p1

    goto :goto_38

    :catchall_36
    move-exception p0

    move-object p0, v0

    .line 660
    :goto_38
    if-eqz p0, :cond_40

    .line 661
    :try_start_3a
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_40

    .line 664
    :catchall_3e
    move-exception p0

    goto :goto_42

    .line 663
    :cond_40
    :goto_40
    nop

    .line 668
    nop

    .line 673
    :goto_42
    return-object v0
.end method

.method public static e(Ljava/lang/String;)[B
    .registers 5

    .line 677
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 678
    nop

    .line 679
    new-instance v1, Ljava/util/zip/Deflater;

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 682
    const/4 v2, 0x0

    :try_start_f
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_25

    .line 683
    :try_start_14
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_22

    .line 688
    nop

    .line 690
    :try_start_1e
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    goto :goto_2b

    .line 685
    :catchall_22
    move-exception p0

    move-object v2, v3

    goto :goto_26

    :catchall_25
    move-exception p0

    .line 688
    :goto_26
    if-eqz v2, :cond_2e

    .line 690
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2c

    .line 693
    :goto_2b
    goto :goto_2e

    .line 691
    :catchall_2c
    move-exception p0

    goto :goto_2b

    .line 695
    :cond_2e
    :goto_2e
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 696
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 66
    sget-object v0, Lcom/tendcloud/tenddata/game/bq;->i:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_7

    .line 67
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 71
    :cond_7
    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4

    .line 741
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 743
    :try_start_6
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    .line 746
    goto :goto_13

    .line 744
    :catchall_f
    move-exception p0

    .line 745
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 747
    :goto_13
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    .line 751
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 753
    :try_start_5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    .line 756
    goto :goto_12

    .line 754
    :catchall_e
    move-exception p0

    .line 755
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 757
    :goto_12
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 2

    .line 789
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/tendcloud/tenddata/game/bf;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method
