.class public Lcom/yxcorp/kuaishou/addfp/android/a/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/yxcorp/kuaishou/addfp/android/a/c;


# instance fields
.field private a:Lcom/yxcorp/kuaishou/addfp/android/a/e;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->b:Lcom/yxcorp/kuaishou/addfp/android/a/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a:Lcom/yxcorp/kuaishou/addfp/android/a/e;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    :try_start_f
    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->d:Landroid/content/Context;

    new-instance p1, Lcom/yxcorp/kuaishou/addfp/android/a/e;

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->d:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/yxcorp/kuaishou/addfp/android/a/e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a:Lcom/yxcorp/kuaishou/addfp/android/a/e;
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/a/c;
    .registers 3

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->b:Lcom/yxcorp/kuaishou/addfp/android/a/c;

    if-nez v0, :cond_17

    const-class v0, Lcom/yxcorp/kuaishou/addfp/android/a/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/yxcorp/kuaishou/addfp/android/a/c;->b:Lcom/yxcorp/kuaishou/addfp/android/a/c;

    if-nez v1, :cond_12

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/android/a/c;

    invoke-direct {v1, p0}, Lcom/yxcorp/kuaishou/addfp/android/a/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yxcorp/kuaishou/addfp/android/a/c;->b:Lcom/yxcorp/kuaishou/addfp/android/a/c;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->b:Lcom/yxcorp/kuaishou/addfp/android/a/c;

    return-object p0
.end method

.method private a(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2f

    :try_start_b
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "20212102sjcudiab"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->a([B[B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_2c

    :try_start_26
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2b

    :catch_2a
    move-exception p1

    :goto_2b
    return-object v0

    :catchall_2c
    move-exception p1

    move-object v0, v2

    goto :goto_30

    :catchall_2f
    move-exception p1

    :goto_30
    :try_start_30
    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3d

    if-eqz v0, :cond_3a

    :try_start_35
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move-exception p1

    :cond_3a
    :goto_3a
    const-string p1, ""

    return-object p1

    :catchall_3d
    move-exception p1

    if-eqz v0, :cond_45

    :try_start_40
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception v0

    :cond_45
    :goto_45
    throw p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    new-instance v3, Ljava/lang/String;

    const-string v4, "Lm91a2R0ZnQ="

    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    :try_start_2e
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_3d

    :try_start_37
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception p0

    return-void

    :catchall_3d
    move-exception p1

    move-object v0, p0

    goto :goto_41

    :catchall_40
    move-exception p1

    :goto_41
    :try_start_41
    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4c

    if-eqz v0, :cond_4b

    :try_start_46
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception p0

    :cond_4b
    return-void

    :catchall_4c
    move-exception p0

    if-eqz v0, :cond_54

    :try_start_4f
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_54

    :catch_53
    move-exception p1

    :cond_54
    :goto_54
    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/util/Pair;
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "cache_e"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_cb

    monitor-exit p0

    return-object v0

    :cond_2d
    :try_start_2d
    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a:Lcom/yxcorp/kuaishou/addfp/android/a/e;

    invoke-virtual {v1}, Lcom/yxcorp/kuaishou/addfp/android/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_cb

    if-nez v2, :cond_9a

    const/4 v2, 0x0

    :try_start_3f
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_44

    goto :goto_46

    :catchall_44
    move-exception v2

    move-object v2, v0

    :goto_46
    if-nez v2, :cond_50

    const/16 v3, 0x8

    :try_start_4a
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4f

    goto :goto_50

    :catchall_4f
    move-exception v1

    :cond_50
    :goto_50
    :try_start_50
    const-string v1, "20212102sjcudiab"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->b([B[B)[B

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "cache_e"

    const-string v4, "cache_e"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "cache_m"

    const-string v4, "cache_m"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "c_time"

    const-string v4, "c_time"

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catchall {:try_start_50 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception v1

    :try_start_97
    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_cf

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_cf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "cache_e"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cf

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_c9
    .catchall {:try_start_97 .. :try_end_c9} :catchall_cb

    monitor-exit p0

    return-object v0

    :catchall_cb
    move-exception v1

    :try_start_cc
    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_cf
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "8"

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_db
    .catchall {:try_start_cc .. :try_end_db} :catchall_dd

    monitor-exit p0

    return-object v0

    :catchall_dd
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    const-string v0, "20212102sjcudiab"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->b([B[B)[B

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3a

    :try_start_2b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_37

    :try_start_31
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_36

    :catch_35
    move-exception p1

    :goto_36
    return-object v0

    :catchall_37
    move-exception v0

    move-object v1, p1

    goto :goto_3b

    :catchall_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4b

    if-eqz v1, :cond_45

    :try_start_40
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception p1

    :cond_45
    :goto_45
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    :catchall_4b
    move-exception p1

    if-eqz v1, :cond_53

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_53

    :catch_52
    move-exception v0

    :cond_53
    :goto_53
    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "c_time"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "cache_e"

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "cache_m"

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "c_time"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "cache_e"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cache_m"

    invoke-virtual {v3, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const-string v1, "20212102sjcudiab"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p2, v1}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->a([B[B)[B

    move-result-object p2
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_64

    const/4 v1, 0x0

    :try_start_46
    invoke-static {p2, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4b

    goto :goto_4d

    :catchall_4b
    move-exception v1

    move-object v1, v0

    :goto_4d
    if-nez v1, :cond_57

    const/16 v2, 0x8

    :try_start_51
    invoke-static {p2, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_56

    goto :goto_57

    :catchall_56
    move-exception p2

    :cond_57
    :goto_57
    if-eqz v1, :cond_65

    :try_start_59
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a:Lcom/yxcorp/kuaishou/addfp/android/a/e;

    invoke-virtual {v1, p2}, Lcom/yxcorp/kuaishou/addfp/android/a/e;->a(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_64

    goto :goto_65

    :catchall_64
    move-exception p2

    :cond_65
    :goto_65
    :try_start_65
    iget-object p2, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->d:Landroid/content/Context;

    const-string v1, "k_w_o_d_out_dtt"

    invoke-static {p2, v1}, Lcom/yxcorp/kuaishou/addfp/android/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->a()Z

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->d:Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yxcorp/kuaishou/addfp/android/b/e;->b(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    const-string p2, "Lm91a2R0ZnQ="

    invoke-virtual {p0, p2}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_8c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b6

    invoke-virtual {p0, p2}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_b6

    sget-object p2, Lcom/yxcorp/kuaishou/addfp/android/a/b;->a:Lcom/yxcorp/kuaishou/addfp/android/a/a;

    invoke-virtual {p2}, Lcom/yxcorp/kuaishou/addfp/android/a/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b6

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad
    sget-object p2, Lcom/yxcorp/kuaishou/addfp/android/a/b;->a:Lcom/yxcorp/kuaishou/addfp/android/a/a;

    invoke-virtual {p2}, Lcom/yxcorp/kuaishou/addfp/android/a/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b6
    if-eqz v0, :cond_be

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result p2

    if-nez p2, :cond_cc

    :cond_be
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object p2, Lcom/yxcorp/kuaishou/addfp/android/a/b;->a:Lcom/yxcorp/kuaishou/addfp/android/a/a;

    invoke-virtual {p2}, Lcom/yxcorp/kuaishou/addfp/android/a/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cc
    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f5

    iget-object p2, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->d:Landroid/content/Context;

    const-string v0, "k_w_o_d_out_dtt"

    invoke-static {p2, v0, p1}, Lcom/yxcorp/kuaishou/addfp/android/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->a()Z

    iget-object p2, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->d:Landroid/content/Context;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yxcorp/kuaishou/addfp/android/b/e;->b(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f5

    iget-object p2, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->d:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_65 .. :try_end_f5} :catchall_f7

    :cond_f5
    monitor-exit p0

    return-void

    :catchall_f7
    move-exception p1

    :try_start_f8
    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_fd

    monitor-exit p0

    return-void

    :catchall_fd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/android/a/c;->d:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_44

    new-instance p1, Ljava/io/FileReader;

    invoke-direct {p1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_34
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    return-object p1

    :catchall_40
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_44
    const-string p1, ""

    return-object p1
.end method
