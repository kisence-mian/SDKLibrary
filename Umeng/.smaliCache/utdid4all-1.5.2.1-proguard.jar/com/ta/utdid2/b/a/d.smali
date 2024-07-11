.class public Lcom/ta/utdid2/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/b/a/d$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private final a:Ljava/lang/Object;

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Lcom/ta/utdid2/b/a/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/b/a/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/util/HashMap;

    .line 26
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/io/File;

    .line 31
    return-void

    .line 29
    :cond_21
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Directory can not be empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Ljava/io/File;
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    iget-object v1, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 44
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 118
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ".bak"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 34
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_e

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 37
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " contains a path separator"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a()Ljava/lang/Object;
    .registers 1

    .line 17
    sget-object v0, Lcom/ta/utdid2/b/a/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Ljava/io/File;)Ljava/io/File;
    .registers 1

    .line 17
    invoke-static {p0}, Lcom/ta/utdid2/b/a/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 48
    invoke-direct {p0}, Lcom/ta/utdid2/b/a/d;->a()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ta/utdid2/b/a/d;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b;
    .registers 8

    .line 53
    invoke-direct {p0, p1}, Lcom/ta/utdid2/b/a/d;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 54
    sget-object v0, Lcom/ta/utdid2/b/a/d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_7
    iget-object v1, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/utdid2/b/a/d$a;

    .line 56
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/ta/utdid2/b/a/d$a;->c()Z

    move-result v2

    if-nez v2, :cond_19

    .line 57
    monitor-exit v0

    return-object v1

    .line 59
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_cb

    .line 61
    nop

    .line 62
    invoke-static {p1}, Lcom/ta/utdid2/b/a/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 65
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 68
    :cond_2b
    nop

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a8

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 71
    :try_start_39
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_3e} :catch_68
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_5c
    .catchall {:try_start_39 .. :try_end_3e} :catchall_5a

    .line 72
    :try_start_3e
    invoke-static {v0}, Lcom/ta/utdid2/b/a/e;->a(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v2

    .line 73
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e .. :try_end_45} :catch_55
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_50
    .catchall {:try_start_3e .. :try_end_45} :catchall_4d

    .line 93
    nop

    .line 95
    :try_start_46
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4b

    .line 98
    :goto_49
    goto/16 :goto_a8

    .line 96
    :catchall_4b
    move-exception v0

    goto :goto_49

    .line 93
    :catchall_4d
    move-exception p1

    move-object v2, v0

    goto :goto_8e

    .line 90
    :catch_50
    move-exception v3

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_5e

    .line 74
    :catch_55
    move-exception v3

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_6a

    .line 93
    :catchall_5a
    move-exception p1

    goto :goto_8e

    .line 90
    :catch_5c
    move-exception v0

    move-object v0, v2

    .line 93
    :goto_5e
    if-eqz v2, :cond_66

    .line 95
    :try_start_60
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    .line 98
    :goto_63
    goto :goto_66

    .line 96
    :catchall_64
    move-exception v2

    goto :goto_63

    .line 103
    :cond_66
    :goto_66
    move-object v2, v0

    goto :goto_a8

    .line 74
    :catch_68
    move-exception v0

    move-object v0, v2

    .line 76
    :goto_6a
    :try_start_6a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6f} :catch_96
    .catchall {:try_start_6a .. :try_end_6f} :catchall_85

    .line 77
    :try_start_6f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 78
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_78} :catch_82
    .catchall {:try_start_6f .. :try_end_78} :catchall_7f

    .line 82
    nop

    .line 84
    :try_start_79
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    .line 87
    :goto_7c
    goto :goto_a0

    .line 85
    :catchall_7d
    move-exception v2

    goto :goto_7c

    .line 82
    :catchall_7f
    move-exception p1

    move-object v2, v3

    goto :goto_86

    .line 79
    :catch_82
    move-exception v2

    move-object v2, v3

    goto :goto_97

    .line 82
    :catchall_85
    move-exception p1

    :goto_86
    if-eqz v2, :cond_8d

    .line 84
    :try_start_88
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    .line 87
    goto :goto_8d

    .line 85
    :catchall_8c
    move-exception p2

    .line 87
    :cond_8d
    :goto_8d
    :try_start_8d
    throw p1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_5a

    .line 93
    :goto_8e
    if-eqz v2, :cond_95

    .line 95
    :try_start_90
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    .line 98
    goto :goto_95

    .line 96
    :catchall_94
    move-exception p2

    .line 98
    :cond_95
    :goto_95
    throw p1

    .line 79
    :catch_96
    move-exception v3

    .line 82
    :goto_97
    if-eqz v2, :cond_9f

    .line 84
    :try_start_99
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9d

    .line 87
    :goto_9c
    goto :goto_9f

    .line 85
    :catchall_9d
    move-exception v3

    goto :goto_9c

    .line 93
    :cond_9f
    :goto_9f
    move-object v3, v2

    :goto_a0
    if-eqz v3, :cond_66

    .line 95
    :try_start_a2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    goto :goto_63

    .line 96
    :catchall_a6
    move-exception v2

    goto :goto_63

    .line 103
    :cond_a8
    :goto_a8
    sget-object v3, Lcom/ta/utdid2/b/a/d;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 104
    if-eqz v1, :cond_b1

    .line 105
    :try_start_ad
    invoke-virtual {v1, v2}, Lcom/ta/utdid2/b/a/d$a;->a(Ljava/util/Map;)V

    goto :goto_c6

    .line 107
    :cond_b1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ta/utdid2/b/a/d$a;

    .line 108
    if-nez v1, :cond_c6

    .line 109
    new-instance v1, Lcom/ta/utdid2/b/a/d$a;

    invoke-direct {v1, p1, p2, v2}, Lcom/ta/utdid2/b/a/d$a;-><init>(Ljava/io/File;ILjava/util/Map;)V

    .line 110
    iget-object p2, p0, Lcom/ta/utdid2/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_c6
    :goto_c6
    monitor-exit v3

    return-object v1

    .line 114
    :catchall_c8
    move-exception p1

    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_ad .. :try_end_ca} :catchall_c8

    throw p1

    .line 59
    :catchall_cb
    move-exception p1

    :try_start_cc
    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    goto :goto_cf

    :goto_ce
    throw p1

    :goto_cf
    goto :goto_ce
.end method
