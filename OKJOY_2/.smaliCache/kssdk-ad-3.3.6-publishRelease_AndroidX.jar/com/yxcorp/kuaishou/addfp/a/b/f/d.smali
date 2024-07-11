.class public final Lcom/yxcorp/kuaishou/addfp/a/b/f/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/yxcorp/kuaishou/addfp/a/b/f/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/yxcorp/kuaishou/addfp/a/b/b;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/concurrent/CountDownLatch;

.field private g:Landroid/content/ServiceConnection;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/f/a;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->f:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/yxcorp/kuaishou/addfp/a/b/f/e;

    invoke-direct {v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/f/e;-><init>(Lcom/yxcorp/kuaishou/addfp/a/b/f/d;)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->g:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a/b/f/d;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->f:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private a(Z)V
    .registers 3

    if-eqz p1, :cond_a

    :try_start_2
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->d:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/f/a;

    invoke-interface {p1, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/b;->a(Landroid/os/IInterface;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->d:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    invoke-interface {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/b;->e()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.heytap.openid"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v1, v2, :cond_20

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    const-wide/16 v4, 0x1

    cmp-long p0, v1, v4

    if-ltz p0, :cond_1f

    return v3

    :cond_1f
    return v0

    :cond_20
    if-eqz p0, :cond_27

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_24} :catch_28

    if-lez p0, :cond_27

    return v3

    :cond_27
    return v0

    :catch_28
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, ""

    :try_start_2
    iget-boolean v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->h:Z

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->b:Ljava/lang/String;

    :cond_15
    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_9d

    if-eqz v1, :cond_73

    const/4 v1, 0x0

    :try_start_1e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->b:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2d

    goto :goto_32

    :catchall_2d
    move-exception p1

    :try_start_2e
    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_32
    if-eqz p1, :cond_71

    array-length v2, p1

    if-lez v2, :cond_71

    const-string v2, "SHA1"

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_9d

    :try_start_40
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    if-eqz v2, :cond_71

    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p1

    :goto_50
    if-ge v3, v4, :cond_68

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_6c
    .catchall {:try_start_40 .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception p1

    :try_start_6e
    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_71
    :goto_71
    iput-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->c:Ljava/lang/String;

    :cond_73
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9c

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8a

    goto :goto_9c

    :cond_8a
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/f/a;

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->c:Ljava/lang/String;

    invoke-interface {p1, v1, v2, p2}, Lcom/yxcorp/kuaishou/addfp/a/b/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_98
    .catchall {:try_start_6e .. :try_end_98} :catchall_9d

    if-eqz p2, :cond_9b

    return-object v0

    :cond_9b
    return-object p1

    :cond_9c
    :goto_9c
    return-object v0

    :catchall_9d
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->g:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_9
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/b/b;)V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iput-object p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->d:Lcom/yxcorp/kuaishou/addfp/a/b/b;

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->b(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->h:Z

    if-nez p2, :cond_11

    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a(Z)V

    return-void

    :cond_11
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->g:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_34

    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a(Z)V

    goto :goto_50

    :cond_34
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->f:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0xbb8

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/f/a;

    if-eqz p1, :cond_45

    invoke-direct {p0, v2}, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a(Z)V

    goto :goto_50

    :cond_45
    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a(Z)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_49

    return-void

    :catchall_49
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a(Z)V

    :goto_50
    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->h:Z

    return v0
.end method
