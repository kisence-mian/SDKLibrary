.class public Lcom/kwad/sdk/core/f/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/kwad/sdk/core/f/a/f;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/kwad/sdk/core/f/a/f$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/f/a/f$1;-><init>(Lcom/kwad/sdk/core/f/a/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/f/a/f;->c:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/kwad/sdk/core/f/a/f;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/f/a/f;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/f/a/f;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/kwad/sdk/core/f/a/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/f/a/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_52

    array-length v2, v1

    if-lez v2, :cond_52

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v1

    :goto_31
    if-ge v2, v4, :cond_49

    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v1

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    const-string v0, "OppoDeviceIDHelper"

    const-string v1, ""

    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.heytap.openid"

    const-string v5, "com.heytap.openid.IdentifyService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/f;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/kwad/sdk/core/f/a/f;->c:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID isBin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_89

    if-eqz v2, :cond_92

    :try_start_3b
    iget-object v2, p0, Lcom/kwad/sdk/core/f/a/f;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    new-instance v3, Lcom/kwad/sdk/core/f/b/d$a;

    invoke-direct {v3, v2}, Lcom/kwad/sdk/core/f/b/d$a;-><init>(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/kwad/sdk/core/f/a/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/kwad/sdk/core/f/a/f;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OUID"

    invoke-interface {v3, v2, v4, v5}, Lcom/kwad/sdk/core/f/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOAID oaid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_6e} :catch_78
    .catchall {:try_start_3b .. :try_end_6e} :catchall_76

    :try_start_6e
    iget-object v2, p0, Lcom/kwad/sdk/core/f/a/f;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/f;->c:Landroid/content/ServiceConnection;

    :goto_72
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_75} :catch_89

    goto :goto_92

    :catchall_76
    move-exception v2

    goto :goto_81

    :catch_78
    move-exception v2

    :try_start_79
    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_76

    :try_start_7c
    iget-object v2, p0, Lcom/kwad/sdk/core/f/a/f;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/f;->c:Landroid/content/ServiceConnection;

    goto :goto_72

    :goto_81
    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/f;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/kwad/sdk/core/f/a/f;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v2
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_89} :catch_89

    :catch_89
    move-exception v2

    const-string v3, "getOAID service not found"

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_92
    :goto_92
    return-object v1
.end method
