.class public Lcom/tendcloud/tenddata/game/aq;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/aq;


# instance fields
.field private b:Landroid/content/pm/PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/aq;->a:Lcom/tendcloud/tenddata/game/aq;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/aq;->b:Landroid/content/pm/PackageInfo;

    .line 19
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/aq;
    .registers 2

    .line 22
    sget-object v0, Lcom/tendcloud/tenddata/game/aq;->a:Lcom/tendcloud/tenddata/game/aq;

    if-nez v0, :cond_17

    .line 23
    const-class v0, Lcom/tendcloud/tenddata/game/aq;

    monitor-enter v0

    .line 24
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/aq;->a:Lcom/tendcloud/tenddata/game/aq;

    if-nez v1, :cond_12

    .line 25
    new-instance v1, Lcom/tendcloud/tenddata/game/aq;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/aq;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/aq;->a:Lcom/tendcloud/tenddata/game/aq;

    .line 27
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 29
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/aq;->a:Lcom/tendcloud/tenddata/game/aq;

    return-object v0
.end method

.method private declared-synchronized i(Landroid/content/Context;)Z
    .registers 4

    monitor-enter p0

    .line 34
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/aq;->b:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_15

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/aq;->b:Landroid/content/pm/PackageInfo;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    .line 40
    :cond_15
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 41
    :catchall_18
    move-exception p1

    .line 44
    const/4 p1, 0x0

    monitor-exit p0

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 50
    if-nez p1, :cond_4

    .line 51
    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    return-object p1

    .line 56
    :catchall_9
    move-exception p1

    .line 58
    const-string p1, ""

    return-object p1
.end method

.method public b(Landroid/content/Context;)I
    .registers 3

    .line 63
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 64
    return v0

    .line 67
    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/aq;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 68
    return v0

    .line 70
    :cond_b
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/aq;->b:Landroid/content/pm/PackageInfo;

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_10

    return p1

    .line 71
    :catchall_10
    move-exception p1

    .line 74
    return v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 79
    const-string v0, "unknown"

    if-nez p1, :cond_5

    .line 80
    return-object v0

    .line 83
    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/aq;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 84
    return-object v0

    .line 86
    :cond_c
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/aq;->b:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object p1

    .line 87
    :catchall_11
    move-exception p1

    .line 90
    return-object v0
.end method

.method public d(Landroid/content/Context;)J
    .registers 4

    .line 95
    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    .line 96
    return-wide v0

    .line 99
    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/aq;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 100
    return-wide v0

    .line 102
    :cond_c
    const/16 p1, 0x9

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 105
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/aq;->b:Landroid/content/pm/PackageInfo;

    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1a

    return-wide v0

    .line 110
    :cond_19
    goto :goto_1b

    .line 107
    :catchall_1a
    move-exception p1

    .line 111
    :goto_1b
    return-wide v0
.end method

.method public e(Landroid/content/Context;)J
    .registers 4

    .line 115
    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    .line 116
    return-wide v0

    .line 119
    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/aq;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 120
    return-wide v0

    .line 122
    :cond_c
    const/16 p1, 0x9

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 123
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/aq;->b:Landroid/content/pm/PackageInfo;

    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1a

    return-wide v0

    .line 128
    :cond_19
    goto :goto_1b

    .line 125
    :catchall_1a
    move-exception p1

    .line 129
    :goto_1b
    return-wide v0
.end method

.method public f(Landroid/content/Context;)J
    .registers 5

    .line 133
    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    .line 134
    return-wide v0

    .line 138
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 139
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-wide v0

    .line 140
    :catchall_15
    move-exception p1

    .line 143
    return-wide v0
.end method

.method public g(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 148
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 149
    return-object v0

    .line 152
    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/aq;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 153
    return-object v0

    .line 155
    :cond_b
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/aq;->b:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 156
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_14

    .line 157
    return-object v0

    .line 159
    :cond_14
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_28

    return-object p1

    .line 166
    :catchall_28
    move-exception p1

    .line 169
    return-object v0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 174
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 175
    return-object v0

    .line 179
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_15

    .line 179
    return-object p1

    .line 181
    :catchall_15
    move-exception p1

    .line 184
    return-object v0
.end method
