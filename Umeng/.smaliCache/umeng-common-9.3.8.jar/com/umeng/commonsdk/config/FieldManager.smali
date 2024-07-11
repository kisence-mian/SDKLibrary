.class public Lcom/umeng/commonsdk/config/FieldManager;
.super Ljava/lang/Object;
.source "FieldManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/config/FieldManager$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "cfgfd"

.field private static b:Lcom/umeng/commonsdk/config/b;

.field private static c:Z

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    invoke-static {}, Lcom/umeng/commonsdk/config/b;->b()Lcom/umeng/commonsdk/config/b;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/config/FieldManager$1;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/umeng/commonsdk/config/FieldManager;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_16

    goto :goto_36

    .line 170
    :cond_16
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 171
    array-length v1, p0

    .line 172
    if-ge v1, v2, :cond_20

    .line 173
    return-object v0

    .line 177
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 178
    const/4 v3, 0x1

    aget-object p0, p0, v3

    .line 179
    new-instance v3, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_34

    return-object v3

    .line 180
    :catchall_34
    move-exception p0

    .line 183
    return-object v0

    .line 168
    :cond_36
    :goto_36
    return-object v0
.end method

.method public static a()Lcom/umeng/commonsdk/config/FieldManager;
    .registers 1

    .line 32
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager$a;->a()Lcom/umeng/commonsdk/config/FieldManager;

    move-result-object v0

    return-object v0
.end method

.method public static allow(Ljava/lang/String;)Z
    .registers 3

    .line 41
    sget-object v0, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-boolean v1, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    if-nez v1, :cond_a

    .line 43
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 45
    :cond_a
    invoke-static {p0}, Lcom/umeng/commonsdk/config/b;->a(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 46
    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public static b()Z
    .registers 2

    .line 50
    sget-object v0, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_3
    sget-boolean v1, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    monitor-exit v0

    return v1

    .line 52
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 13

    .line 63
    const-string v0, "1001@3758096383,2147483647,262143,2047"

    .line 68
    nop

    .line 70
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-class v2, Lcom/umeng/commonsdk/config/d$a;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/umeng/commonsdk/config/d$b;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Lcom/umeng/commonsdk/config/d$c;

    .line 73
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Lcom/umeng/commonsdk/config/d$d;

    .line 74
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 77
    const-string v2, "cfgfd"

    invoke-static {p1, v2, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    sget-object v2, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 80
    :try_start_33
    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 81
    iget-object v5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    cmp-long v9, v5, v7

    if-lez v9, :cond_52

    .line 84
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 85
    if-eqz p1, :cond_52

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_52

    .line 86
    move-object v0, p1

    .line 92
    :cond_52
    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 93
    array-length v0, p1

    .line 94
    if-lez v0, :cond_81

    .line 95
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v6, Lcom/umeng/commonsdk/config/g;

    invoke-direct {v6}, Lcom/umeng/commonsdk/config/g;-><init>()V

    .line 98
    nop

    :goto_66
    if-ge v3, v0, :cond_81

    .line 99
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/umeng/commonsdk/config/e;

    aget-object v8, p1, v3

    sget-object v9, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    aget-object v10, v1, v3

    invoke-static {v10}, Lcom/umeng/commonsdk/config/d;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lcom/umeng/commonsdk/config/e;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 104
    :cond_81
    sput-boolean v4, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    .line 105
    monitor-exit v2

    .line 106
    return-void

    .line 105
    :catchall_85
    move-exception p1

    monitor-exit v2
    :try_end_87
    .catchall {:try_start_33 .. :try_end_87} :catchall_85

    goto :goto_89

    :goto_88
    throw p1

    :goto_89
    goto :goto_88
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    .line 117
    const-string p1, "1001@3758096383,2147483647,262143,2047"

    .line 122
    nop

    .line 124
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/umeng/commonsdk/config/d$a;

    .line 125
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/umeng/commonsdk/config/d$b;

    .line 126
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/umeng/commonsdk/config/d$c;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, Lcom/umeng/commonsdk/config/d$d;

    .line 128
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 131
    sget-object v1, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_2d
    sget-object v4, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    invoke-virtual {v4}, Lcom/umeng/commonsdk/config/b;->a()V

    .line 133
    if-eqz p2, :cond_53

    .line 135
    invoke-static {p2}, Lcom/umeng/commonsdk/config/FieldManager;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    .line 136
    iget-object v4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-lez v8, :cond_53

    .line 139
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 140
    if-eqz p2, :cond_53

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_53

    .line 141
    move-object p1, p2

    .line 148
    :cond_53
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 149
    array-length p2, p1

    .line 150
    if-lez p2, :cond_82

    .line 151
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 152
    new-instance v5, Lcom/umeng/commonsdk/config/g;

    invoke-direct {v5}, Lcom/umeng/commonsdk/config/g;-><init>()V

    .line 154
    nop

    :goto_67
    if-ge v2, p2, :cond_82

    .line 155
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/umeng/commonsdk/config/e;

    aget-object v7, p1, v2

    sget-object v8, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    aget-object v9, v0, v2

    invoke-static {v9}, Lcom/umeng/commonsdk/config/d;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lcom/umeng/commonsdk/config/e;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 160
    :cond_82
    sput-boolean v3, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    .line 161
    monitor-exit v1

    .line 162
    return-void

    .line 161
    :catchall_86
    move-exception p1

    monitor-exit v1
    :try_end_88
    .catchall {:try_start_2d .. :try_end_88} :catchall_86

    goto :goto_8a

    :goto_89
    throw p1

    :goto_8a
    goto :goto_89
.end method
