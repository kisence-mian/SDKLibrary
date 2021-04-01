.class public Lcom/anythink/myoffer/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/a/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/anythink/myoffer/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/anythink/myoffer/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/myoffer/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    invoke-static {}, Lcom/anythink/core/c/b;->a()J

    move-result-wide v0

    .line 1043
    iget-object v2, p0, Lcom/anythink/myoffer/a/c;->b:Lcom/anythink/myoffer/a/a/a;

    if-nez v2, :cond_3c

    .line 1046
    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 1047
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 1050
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 1053
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1056
    :cond_2e
    :try_start_2e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x400

    mul-long/2addr v0, v4

    invoke-static {v3, v0, v1}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/File;J)Lcom/anythink/myoffer/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/a/c;->b:Lcom/anythink/myoffer/a/a/a;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_3d

    .line 1059
    :cond_3c
    :goto_3c
    return-void

    .line 1058
    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/anythink/myoffer/a/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/myoffer/a/c;
    .registers 1

    .prologue
    .line 32
    invoke-static {}, Lcom/anythink/myoffer/a/c$a;->a()Lcom/anythink/myoffer/a/c;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .registers 8

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anythink/myoffer/a/c;->b:Lcom/anythink/myoffer/a/a/a;

    if-eqz v0, :cond_5

    .line 61
    :cond_4
    :goto_4
    return-void

    .line 46
    :cond_5
    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 50
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 56
    :cond_1d
    :try_start_1d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x400

    mul-long/2addr v2, p1

    invoke-static {v1, v2, v3}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/File;J)Lcom/anythink/myoffer/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/a/c;->b:Lcom/anythink/myoffer/a/a/a;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2b} :catch_2c

    goto :goto_4

    .line 58
    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/c/c;Lcom/anythink/myoffer/a/a/d$a;)V
    .registers 5

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/anythink/myoffer/a/c;->a(Ljava/lang/String;ZLcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/c/c;Lcom/anythink/myoffer/a/a/d$a;)V

    .line 164
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;Lcom/anythink/myoffer/c/c;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/myoffer/c/a;",
            ">;",
            "Lcom/anythink/myoffer/c/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    if-nez p1, :cond_3

    .line 157
    :cond_2
    return-void

    .line 152
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 153
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_2

    .line 154
    const/4 v3, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/a;

    const/4 v4, 0x0

    invoke-static {p0, v3, v0, p2, v4}, Lcom/anythink/myoffer/a/c;->a(Ljava/lang/String;ZLcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/c/c;Lcom/anythink/myoffer/a/a/d$a;)V

    .line 153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;ZLcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/c/c;Lcom/anythink/myoffer/a/a/d$a;)V
    .registers 7

    .prologue
    .line 170
    new-instance v0, Lcom/anythink/myoffer/a/a/d;

    invoke-virtual {p3}, Lcom/anythink/myoffer/c/c;->f()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/anythink/myoffer/a/a/d;-><init>(Ljava/lang/String;ZI)V

    .line 171
    invoke-virtual {v0, p2, p4}, Lcom/anythink/myoffer/a/a/d;->a(Lcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/a/a/d$a;)V

    .line 172
    return-void
.end method

.method public static a(Lcom/anythink/myoffer/c/a;)Z
    .registers 2

    .prologue
    .line 178
    invoke-static {p0}, Lcom/anythink/myoffer/a/a/e;->a(Lcom/anythink/myoffer/c/a;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/anythink/myoffer/a/c;->b:Lcom/anythink/myoffer/a/a/a;

    if-eqz v0, :cond_1a

    .line 128
    iget-object v0, p0, Lcom/anythink/myoffer/a/c;->b:Lcom/anythink/myoffer/a/a/a;

    invoke-static {p1}, Lcom/anythink/myoffer/a/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/lang/String;)Lcom/anythink/myoffer/a/a/a$c;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_1a

    .line 131
    invoke-virtual {v0}, Lcom/anythink/myoffer/a/a/a$c;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1a

    .line 133
    check-cast v0, Ljava/io/FileInputStream;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1c

    .line 141
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    .line 137
    goto :goto_19

    .line 139
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 141
    goto :goto_19
.end method

.method public final a(Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 121
    :cond_6
    :goto_6
    return v1

    .line 67
    :cond_7
    invoke-static {}, Lcom/anythink/myoffer/a/a/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 71
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 73
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 79
    :cond_1f
    iget-object v2, p0, Lcom/anythink/myoffer/a/c;->b:Lcom/anythink/myoffer/a/a/a;

    if-eqz v2, :cond_ab

    .line 80
    invoke-static {p1}, Lcom/anythink/myoffer/a/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    :try_start_27
    iget-object v3, p0, Lcom/anythink/myoffer/a/c;->b:Lcom/anythink/myoffer/a/a/a;

    invoke-virtual {v3, v2}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/lang/String;)Lcom/anythink/myoffer/a/a/a$c;

    move-result-object v3

    .line 85
    if-nez v3, :cond_7b

    .line 86
    iget-object v3, p0, Lcom/anythink/myoffer/a/c;->b:Lcom/anythink/myoffer/a/a/a;

    invoke-virtual {v3, v2}, Lcom/anythink/myoffer/a/a/a;->b(Ljava/lang/String;)Lcom/anythink/myoffer/a/a/a$a;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_34} :catch_83
    .catchall {:try_start_27 .. :try_end_34} :catchall_9d

    move-result-object v3

    .line 87
    if-eqz v3, :cond_73

    .line 88
    const/4 v2, 0x0

    :try_start_38
    invoke-virtual {v3, v2}, Lcom/anythink/myoffer/a/a/a$a;->a(I)Ljava/io/OutputStream;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_a5
    .catchall {:try_start_38 .. :try_end_3b} :catchall_9d

    move-result-object v0

    .line 90
    const/16 v2, 0x800

    :try_start_3e
    new-array v2, v2, [B

    .line 92
    :goto_40
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6d

    .line 93
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4b} :catch_4c
    .catchall {:try_start_3e .. :try_end_4b} :catchall_a1

    goto :goto_40

    .line 102
    :catch_4c
    move-exception v2

    move-object v6, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v6

    .line 103
    :goto_51
    :try_start_51
    sget-object v4, Lcom/anythink/myoffer/a/c;->a:Ljava/lang/String;

    const-string v5, "writeToDiskLruCache - "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_91

    .line 105
    if-eqz v2, :cond_65

    .line 106
    :try_start_62
    invoke-virtual {v2}, Lcom/anythink/myoffer/a/a/a$a;->b()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_8c
    .catchall {:try_start_62 .. :try_end_65} :catchall_91

    .line 113
    :cond_65
    :goto_65
    if-eqz v3, :cond_6a

    .line 114
    :try_start_67
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_98

    :cond_6a
    move v0, v1

    :goto_6b
    move v1, v0

    .line 121
    goto :goto_6

    .line 95
    :cond_6d
    :try_start_6d
    invoke-virtual {v3}, Lcom/anythink/myoffer/a/a/a$a;->a()V

    .line 96
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_73} :catch_4c
    .catchall {:try_start_6d .. :try_end_73} :catchall_a1

    .line 101
    :cond_73
    :goto_73
    const/4 v1, 0x1

    .line 113
    if-eqz v0, :cond_79

    .line 114
    :try_start_76
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_89

    :cond_79
    move v0, v1

    .line 117
    goto :goto_6b

    .line 99
    :cond_7b
    :try_start_7b
    invoke-virtual {v3}, Lcom/anythink/myoffer/a/a/a$c;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_82} :catch_83
    .catchall {:try_start_7b .. :try_end_82} :catchall_9d

    goto :goto_73

    .line 102
    :catch_83
    move-exception v2

    move-object v3, v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_51

    .line 118
    :catch_89
    move-exception v0

    move v0, v1

    goto :goto_6b

    .line 109
    :catch_8c
    move-exception v0

    :try_start_8d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    goto :goto_65

    .line 112
    :catchall_91
    move-exception v0

    .line 113
    :goto_92
    if-eqz v3, :cond_97

    .line 114
    :try_start_94
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_9b

    .line 117
    :cond_97
    :goto_97
    throw v0

    .line 118
    :catch_98
    move-exception v0

    move v0, v1

    goto :goto_6b

    :catch_9b
    move-exception v1

    goto :goto_97

    .line 112
    :catchall_9d
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_92

    :catchall_a1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_92

    .line 102
    :catch_a5
    move-exception v2

    move-object v6, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_51

    :cond_ab
    move v0, v1

    goto :goto_6b
.end method
