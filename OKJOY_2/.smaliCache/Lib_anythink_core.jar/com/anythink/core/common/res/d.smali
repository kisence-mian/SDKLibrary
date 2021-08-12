.class public final Lcom/anythink/core/common/res/d;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static e:Lcom/anythink/core/common/res/d;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/anythink/core/common/res/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_internal_resouce"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/res/d;->c:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_custom_resouce"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/res/d;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/res/d;->b:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/res/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/res/d;->f:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lcom/anythink/core/common/g/j;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/res/d;->g:Ljava/io/File;

    .line 43
    return-void
.end method

.method private declared-synchronized a(ILjava/io/File;)Lcom/anythink/core/common/res/a;
    .registers 8

    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/res/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/res/a;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4a

    .line 168
    if-nez v0, :cond_48

    .line 170
    nop

    .line 1208
    packed-switch p1, :pswitch_data_4e

    .line 1213
    const-wide/32 v1, 0x1900000

    goto :goto_26

    .line 1210
    :pswitch_17
    :try_start_17
    iget-object v1, p0, Lcom/anythink/core/common/res/d;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    invoke-static {}, Lcom/anythink/core/c/b;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    goto :goto_26

    .line 172
    :catchall_24
    move-exception p1

    goto :goto_34

    .line 170
    :goto_26
    invoke-static {p2, v1, v2}, Lcom/anythink/core/common/res/a;->a(Ljava/io/File;J)Lcom/anythink/core/common/res/a;

    move-result-object v0

    .line 171
    iget-object p2, p0, Lcom/anythink/core/common/res/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_17 .. :try_end_33} :catchall_24

    .line 177
    goto :goto_48

    .line 173
    :goto_34
    :try_start_34
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/g;->p()Z

    move-result p2

    if-eqz p2, :cond_48

    .line 174
    iget-object p2, p0, Lcom/anythink/core/common/res/d;->b:Ljava/lang/String;

    const-string v1, "Create DiskCache error."

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_4a

    .line 180
    :cond_48
    :goto_48
    monitor-exit p0

    return-object v0

    .line 166
    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_17
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;
    .registers 3

    const-class v0, Lcom/anythink/core/common/res/d;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/res/d;->e:Lcom/anythink/core/common/res/d;

    if-nez v1, :cond_e

    .line 47
    new-instance v1, Lcom/anythink/core/common/res/d;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/res/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/res/d;->e:Lcom/anythink/core/common/res/d;

    .line 50
    :cond_e
    sget-object p0, Lcom/anythink/core/common/res/d;->e:Lcom/anythink/core/common/res/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 45
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 5

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 218
    const/4 p1, 0x0

    return p1

    .line 220
    :cond_8
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/anythink/core/common/res/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private b(I)J
    .registers 6

    .line 208
    packed-switch p1, :pswitch_data_14

    .line 213
    const-wide/32 v0, 0x1900000

    return-wide v0

    .line 210
    :pswitch_7
    iget-object p1, p0, Lcom/anythink/core/common/res/d;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    invoke-static {}, Lcom/anythink/core/c/b;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Ljava/io/FileInputStream;
    .registers 6

    .line 132
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 134
    return-object v2

    .line 137
    :cond_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 142
    :cond_1a
    invoke-direct {p0, p1, v1}, Lcom/anythink/core/common/res/d;->a(ILjava/io/File;)Lcom/anythink/core/common/res/a;

    move-result-object p1

    .line 146
    if-eqz p1, :cond_34

    .line 148
    :try_start_20
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/res/a;->a(Ljava/lang/String;)Lcom/anythink/core/common/res/a$c;

    move-result-object p1

    .line 150
    if-eqz p1, :cond_34

    .line 151
    invoke-virtual {p1}, Lcom/anythink/core/common/res/a$c;->a()Ljava/io/InputStream;

    move-result-object p1

    .line 152
    if-eqz p1, :cond_34

    .line 153
    check-cast p1, Ljava/io/FileInputStream;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2e} :catch_2f

    return-object p1

    .line 159
    :catch_2f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    return-object v2

    .line 157
    :cond_34
    return-object v2
.end method

.method public final a(I)Ljava/lang/String;
    .registers 4

    .line 188
    sget-object v0, Lcom/anythink/core/common/res/d;->d:Ljava/lang/String;

    .line 189
    packed-switch p1, :pswitch_data_14

    goto :goto_8

    .line 191
    :pswitch_6
    sget-object v0, Lcom/anythink/core/common/res/d;->c:Ljava/lang/String;

    .line 195
    :goto_8
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/core/common/res/d;->g:Ljava/io/File;

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;Ljava/io/InputStream;)Z
    .registers 9

    .line 62
    const/4 v0, 0x0

    if-eqz p2, :cond_99

    if-nez p3, :cond_7

    goto/16 :goto_99

    .line 65
    :cond_7
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/res/d;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 67
    return v0

    .line 70
    :cond_12
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_20

    .line 72
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 75
    :cond_20
    nop

    .line 77
    invoke-direct {p0, p1, v2}, Lcom/anythink/core/common/res/d;->a(ILjava/io/File;)Lcom/anythink/core/common/res/a;

    move-result-object p1

    .line 81
    if-eqz p1, :cond_98

    .line 82
    nop

    .line 83
    nop

    .line 85
    const/4 v1, 0x0

    :try_start_2a
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/res/a;->a(Ljava/lang/String;)Lcom/anythink/core/common/res/a$c;

    move-result-object v2

    .line 86
    if-nez v2, :cond_55

    .line 87
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/res/a;->b(Ljava/lang/String;)Lcom/anythink/core/common/res/a$a;

    move-result-object p1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_68
    .catchall {:try_start_2a .. :try_end_34} :catchall_66

    .line 88
    if-eqz p1, :cond_5c

    .line 89
    :try_start_36
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/res/a$a;->a(I)Ljava/io/OutputStream;

    move-result-object v1

    .line 91
    const/16 p2, 0x800

    new-array p2, p2, [B

    .line 93
    :goto_3e
    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_49

    .line 94
    invoke-virtual {v1, p2, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3e

    .line 96
    :cond_49
    invoke-virtual {p1}, Lcom/anythink/core/common/res/a$a;->a()V

    .line 97
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4f} :catch_50
    .catchall {:try_start_36 .. :try_end_4f} :catchall_66

    .line 98
    goto :goto_5c

    .line 103
    :catch_50
    move-exception p2

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    goto :goto_6a

    .line 100
    :cond_55
    :try_start_55
    invoke-virtual {v2}, Lcom/anythink/core/common/res/a$c;->a()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5c} :catch_68
    .catchall {:try_start_55 .. :try_end_5c} :catchall_66

    .line 102
    :cond_5c
    :goto_5c
    const/4 v0, 0x1

    .line 114
    if-eqz v1, :cond_65

    .line 115
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_65

    .line 117
    :catch_63
    move-exception p1

    .line 119
    goto :goto_98

    .line 118
    :cond_65
    :goto_65
    goto :goto_98

    .line 113
    :catchall_66
    move-exception p1

    goto :goto_8e

    .line 103
    :catch_68
    move-exception p2

    move-object p1, v1

    .line 104
    :goto_6a
    :try_start_6a
    iget-object p3, p0, Lcom/anythink/core/common/res/d;->b:Ljava/lang/String;

    const-string v2, "writeToDiskLruCache - "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_8b

    .line 106
    if-eqz v1, :cond_84

    .line 107
    :try_start_7b
    invoke-virtual {v1}, Lcom/anythink/core/common/res/a$a;->b()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f
    .catchall {:try_start_7b .. :try_end_7e} :catchall_8b

    goto :goto_84

    .line 110
    :catch_7f
    move-exception p2

    :try_start_80
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_8b

    goto :goto_85

    .line 111
    :cond_84
    :goto_84
    nop

    .line 114
    :goto_85
    if-eqz p1, :cond_65

    .line 115
    :try_start_87
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_63

    goto :goto_65

    .line 113
    :catchall_8b
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    .line 114
    :goto_8e
    if-eqz v1, :cond_96

    .line 115
    :try_start_90
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_96

    .line 117
    :catch_94
    move-exception p2

    goto :goto_97

    .line 118
    :cond_96
    :goto_96
    nop

    .line 119
    :goto_97
    throw p1

    .line 121
    :cond_98
    :goto_98
    return v0

    .line 63
    :cond_99
    :goto_99
    return v0
.end method
