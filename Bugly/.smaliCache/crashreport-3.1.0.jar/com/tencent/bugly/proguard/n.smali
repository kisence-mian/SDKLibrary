.class public final Lcom/tencent/bugly/proguard/n;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static final a:J

.field private static b:Lcom/tencent/bugly/proguard/n;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/m;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/n;->b:Lcom/tencent/bugly/proguard/n;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/bugly/proguard/n;->a:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/tencent/bugly/proguard/n;->c:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/n;->e:Ljava/util/Map;

    .line 57
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/n;->d:Ljava/lang/String;

    .line 58
    const-string v0, "crashrecord"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/n;->f:Landroid/content/SharedPreferences;

    .line 59
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/n;
    .registers 2

    const-class v0, Lcom/tencent/bugly/proguard/n;

    monitor-enter v0

    .line 75
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/proguard/n;->b:Lcom/tencent/bugly/proguard/n;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 75
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;
    .registers 3

    const-class v0, Lcom/tencent/bugly/proguard/n;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/proguard/n;->b:Lcom/tencent/bugly/proguard/n;

    if-nez v1, :cond_e

    .line 69
    new-instance v1, Lcom/tencent/bugly/proguard/n;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/bugly/proguard/n;->b:Lcom/tencent/bugly/proguard/n;

    .line 71
    :cond_e
    sget-object p0, Lcom/tencent/bugly/proguard/n;->b:Lcom/tencent/bugly/proguard/n;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 67
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/n;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/tencent/bugly/proguard/n;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/n;I)Ljava/util/List;
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/n;->c(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/List<",
            "*>;>(ITT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 224
    if-nez p2, :cond_5

    .line 225
    monitor-exit p0

    return-void

    .line 227
    :cond_5
    const/4 v0, 0x0

    :try_start_6
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/n;->c:Landroid/content/Context;

    const-string v3, "crashrecord"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_56
    .catchall {:try_start_6 .. :try_end_20} :catchall_54

    .line 228
    const/4 p1, 0x0

    .line 230
    :try_start_21
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_38
    .catchall {:try_start_21 .. :try_end_2b} :catchall_34

    .line 231
    :try_start_2b
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_32
    .catchall {:try_start_2b .. :try_end_2e} :catchall_4d

    .line 236
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_56
    .catchall {:try_start_2e .. :try_end_31} :catchall_54

    goto :goto_5e

    .line 232
    :catch_32
    move-exception p1

    goto :goto_3b

    .line 236
    :catchall_34
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_4e

    .line 232
    :catch_38
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    .line 233
    :goto_3b
    :try_start_3b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    const-string p1, "open record file error"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_4d

    .line 236
    if-eqz v2, :cond_4b

    .line 237
    :try_start_47
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_56
    .catchall {:try_start_47 .. :try_end_4a} :catchall_54

    goto :goto_5e

    .line 242
    :cond_4b
    monitor-exit p0

    return-void

    .line 236
    :catchall_4d
    move-exception p1

    :goto_4e
    if-eqz v2, :cond_53

    .line 237
    :try_start_50
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    :cond_53
    throw p1
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_54} :catch_56
    .catchall {:try_start_50 .. :try_end_54} :catchall_54

    .line 223
    :catchall_54
    move-exception p1

    goto :goto_60

    .line 240
    :catch_56
    move-exception p1

    .line 241
    :try_start_57
    const-string p1, "writeCrashRecord error"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_54

    .line 243
    :goto_5e
    monitor-exit p0

    return-void

    .line 223
    :goto_60
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/n;ILjava/util/List;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/n;->a(ILjava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/n;)Ljava/util/Map;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/tencent/bugly/proguard/n;->e:Ljava/util/Map;

    return-object p0
.end method

.method private declared-synchronized b(I)Z
    .registers 14

    monitor-enter p0

    .line 87
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/n;->c(I)Ljava/util/List;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_82
    .catchall {:try_start_2 .. :try_end_6} :catchall_80

    .line 88
    if-nez v1, :cond_a

    .line 89
    monitor-exit p0

    return v0

    .line 91
    :cond_a
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-wide/32 v8, 0x5265c00

    if-eqz v7, :cond_4b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/proguard/m;

    .line 95
    iget-object v10, v7, Lcom/tencent/bugly/proguard/m;->b:Ljava/lang/String;

    if-eqz v10, :cond_40

    iget-object v10, v7, Lcom/tencent/bugly/proguard/m;->b:Ljava/lang/String;

    iget-object v11, p0, Lcom/tencent/bugly/proguard/n;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_40

    iget v10, v7, Lcom/tencent/bugly/proguard/m;->d:I

    if-lez v10, :cond_40

    .line 97
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_40
    iget-wide v10, v7, Lcom/tencent/bugly/proguard/m;->c:J

    add-long/2addr v10, v8

    cmp-long v8, v10, v2

    if-gez v8, :cond_4a

    .line 101
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_4a
    goto :goto_1c

    .line 104
    :cond_4b
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 105
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_78

    .line 106
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_76

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/m;

    iget-wide v4, v4, Lcom/tencent/bugly/proguard/m;->c:J

    add-long/2addr v4, v8

    cmp-long v2, v4, v2

    if-gez v2, :cond_76

    .line 108
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 109
    invoke-direct {p0, p1, v1}, Lcom/tencent/bugly/proguard/n;->a(ILjava/util/List;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_74} :catch_82
    .catchall {:try_start_a .. :try_end_74} :catchall_80

    .line 110
    monitor-exit p0

    return v0

    .line 113
    :cond_76
    monitor-exit p0

    return v6

    .line 117
    :cond_78
    :try_start_78
    invoke-interface {v1, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 118
    invoke-direct {p0, p1, v1}, Lcom/tencent/bugly/proguard/n;->a(ILjava/util/List;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7e} :catch_82
    .catchall {:try_start_78 .. :try_end_7e} :catchall_80

    .line 119
    monitor-exit p0

    return v0

    .line 86
    :catchall_80
    move-exception p1

    goto :goto_8c

    .line 121
    :catch_82
    move-exception p1

    .line 122
    :try_start_83
    const-string p1, "isFrequentCrash failed"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_80

    .line 124
    monitor-exit p0

    return v0

    .line 86
    :goto_8c
    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/n;I)Z
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/n;->b(I)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/n;)Landroid/content/SharedPreferences;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/tencent/bugly/proguard/n;->f:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private declared-synchronized c(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/List<",
            "*>;>(I)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 197
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/n;->c:Landroid/content/Context;

    const-string v4, "crashrecord"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_68
    .catchall {:try_start_3 .. :try_end_21} :catchall_66

    if-nez p1, :cond_25

    .line 199
    monitor-exit p0

    return-object v0

    .line 201
    :cond_25
    nop

    .line 203
    :try_start_26
    new-instance p1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_30} :catch_4f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_30} :catch_43
    .catchall {:try_start_26 .. :try_end_30} :catchall_40

    .line 204
    :try_start_30
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_36} :catch_3e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_36} :catch_3c
    .catchall {:try_start_30 .. :try_end_36} :catchall_5f

    .line 205
    nop

    .line 211
    :try_start_37
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_68
    .catchall {:try_start_37 .. :try_end_3a} :catchall_66

    monitor-exit p0

    return-object v2

    .line 208
    :catch_3c
    move-exception v2

    goto :goto_45

    .line 206
    :catch_3e
    move-exception v2

    goto :goto_51

    .line 211
    :catchall_40
    move-exception v2

    move-object p1, v0

    goto :goto_60

    .line 208
    :catch_43
    move-exception p1

    move-object p1, v0

    .line 209
    :goto_45
    :try_start_45
    const-string v2, "get object error"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 211
    if-eqz p1, :cond_5e

    .line 212
    goto :goto_5a

    .line 206
    :catch_4f
    move-exception p1

    move-object p1, v0

    .line 207
    :goto_51
    const-string v2, "open record file error"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_5f

    .line 211
    if-eqz p1, :cond_5e

    .line 212
    :goto_5a
    :try_start_5a
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_70

    .line 217
    :cond_5e
    goto :goto_70

    .line 211
    :catchall_5f
    move-exception v2

    :goto_60
    if-eqz p1, :cond_65

    .line 212
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    :cond_65
    throw v2
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_66} :catch_68
    .catchall {:try_start_5a .. :try_end_66} :catchall_66

    .line 196
    :catchall_66
    move-exception p1

    goto :goto_72

    .line 215
    :catch_68
    move-exception p1

    .line 216
    :try_start_69
    const-string p1, "readCrashRecord error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_66

    .line 218
    :goto_70
    monitor-exit p0

    return-object v0

    .line 196
    :goto_72
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(II)V
    .registers 5

    .line 135
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object p1

    new-instance v0, Lcom/tencent/bugly/proguard/n$1;

    const/16 v1, 0x3ec

    invoke-direct {v0, p0, v1, p2}, Lcom/tencent/bugly/proguard/n$1;-><init>(Lcom/tencent/bugly/proguard/n;II)V

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method public final declared-synchronized a(I)Z
    .registers 6

    monitor-enter p0

    .line 252
    nop

    .line 254
    const/4 v0, 0x1

    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/n;->f:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/proguard/n;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 255
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/n$2;

    invoke-direct {v2, p0, p1}, Lcom/tencent/bugly/proguard/n$2;-><init>(Lcom/tencent/bugly/proguard/n;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_30
    .catchall {:try_start_3 .. :try_end_2e} :catchall_32

    .line 262
    monitor-exit p0

    return v0

    .line 263
    :catch_30
    move-exception p1

    goto :goto_34

    .line 251
    :catchall_32
    move-exception p1

    goto :goto_3e

    .line 264
    :goto_34
    :try_start_34
    const-string p1, "canInit error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_32

    .line 266
    monitor-exit p0

    return v0

    .line 251
    :goto_3e
    monitor-exit p0

    throw p1
.end method
