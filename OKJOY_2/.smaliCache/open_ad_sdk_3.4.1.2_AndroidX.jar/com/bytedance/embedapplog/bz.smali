.class final Lcom/bytedance/embedapplog/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/cf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/bz$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/bytedance/embedapplog/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/embedapplog/bs<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/bytedance/embedapplog/bz$1;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/bz$1;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/bz;->a:Lcom/bytedance/embedapplog/bs;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static c(Landroid/content/Context;)Z
    .registers 4

    .line 37
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 38
    return v0

    .line 40
    :cond_4
    sget-object v1, Lcom/bytedance/embedapplog/bz;->a:Lcom/bytedance/embedapplog/bs;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Lcom/bytedance/embedapplog/bs;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static e(Landroid/content/Context;)I
    .registers 3

    .line 87
    nop

    .line 89
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.huawei.hwid"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 90
    if-eqz p0, :cond_11

    .line 91
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    move v0, p0

    .line 95
    :cond_11
    goto :goto_16

    .line 93
    :catchall_12
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    :goto_16
    return v0
.end method

.method private static f(Landroid/content/Context;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.huawei.hwid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/bytedance/embedapplog/cn;

    new-instance v2, Lcom/bytedance/embedapplog/bz$2;

    invoke-direct {v2}, Lcom/bytedance/embedapplog/bz$2;-><init>()V

    invoke-direct {v1, p0, v0, v2}, Lcom/bytedance/embedapplog/cn;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/embedapplog/cn$b;)V

    .line 123
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/cn;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 2

    .line 45
    invoke-static {p1}, Lcom/bytedance/embedapplog/bz;->c(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public synthetic b(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf$a;
    .registers 2

    .line 21
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/bz;->d(Landroid/content/Context;)Lcom/bytedance/embedapplog/bz$a;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;)Lcom/bytedance/embedapplog/bz$a;
    .registers 6

    .line 57
    new-instance v0, Lcom/bytedance/embedapplog/bz$a;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/bz$a;-><init>()V

    .line 58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3a

    .line 60
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pps_oaid"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pps_track_limit"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 63
    iput-object v1, v0, Lcom/bytedance/embedapplog/bz$a;->b:Ljava/lang/String;

    .line 64
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/embedapplog/bz$a;->c:Z

    .line 65
    const-wide v1, 0x2f08517f88L

    iput-wide v1, v0, Lcom/bytedance/embedapplog/bz$a;->a:J
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_36

    .line 66
    return-object v0

    .line 70
    :cond_35
    goto :goto_3a

    .line 68
    :catchall_36
    move-exception v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    :cond_3a
    :goto_3a
    invoke-static {p1}, Lcom/bytedance/embedapplog/bz;->f(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_57

    .line 74
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/bytedance/embedapplog/bz$a;->b:Ljava/lang/String;

    .line 75
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/embedapplog/bz$a;->c:Z

    .line 76
    invoke-static {p1}, Lcom/bytedance/embedapplog/bz;->e(Landroid/content/Context;)I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/bytedance/embedapplog/bz$a;->a:J

    .line 78
    :cond_57
    return-object v0
.end method
