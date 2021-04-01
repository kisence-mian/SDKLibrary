.class public Lcom/kwad/sdk/c/e/b/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
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

    iput-object v0, p0, Lcom/kwad/sdk/c/e/b/f;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/kwad/sdk/c/e/b/f$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/e/b/f$a;-><init>(Lcom/kwad/sdk/c/e/b/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/e/b/f;->c:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/kwad/sdk/c/e/b/f;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/c/e/b/f;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/f;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/c/e/b/f;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_4e

    array-length v3, v2

    if-lez v3, :cond_4e

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    :goto_32
    if-ge v1, v4, :cond_4a

    aget-byte v5, v2, v1

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_4f

    move-result-object v0

    :cond_4e
    :goto_4e
    return-object v0

    :catch_4f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    const-string v1, ""

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.heytap.openid"

    const-string v4, "com.heytap.openid.IdentifyService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/f;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/c/e/b/f;->c:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_90

    move-result v0

    const-string v2, "OppoDeviceIDHelper"

    :try_start_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID isBin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_39} :catch_90

    if-eqz v0, :cond_a1

    :try_start_3b
    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/f;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v2, Lcom/kwad/sdk/c/e/c/d$a;

    invoke-direct {v2, v0}, Lcom/kwad/sdk/c/e/c/d$a;-><init>(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/kwad/sdk/c/e/b/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OUID"

    invoke-interface {v2, v0, v3, v4}, Lcom/kwad/sdk/c/e/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_57} :catch_7b
    .catchall {:try_start_3b .. :try_end_57} :catchall_87

    move-result-object v1

    const-string v0, "OppoDeviceIDHelper"

    :try_start_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOAID oaid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_70} :catch_7b
    .catchall {:try_start_5a .. :try_end_70} :catchall_87

    :try_start_70
    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/f;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/f;->c:Landroid/content/ServiceConnection;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_90

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_77
    :try_start_77
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_9f

    :goto_7a
    return-object v0

    :catch_7b
    move-exception v0

    :try_start_7c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_87

    :try_start_7f
    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/f;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/f;->c:Landroid/content/ServiceConnection;

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_77

    :catchall_87
    move-exception v0

    iget-object v2, p0, Lcom/kwad/sdk/c/e/b/f;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/c/e/b/f;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_90} :catch_90

    :catch_90
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_94
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "OppoDeviceIDHelper"

    const-string v2, "getOAID service not found"

    invoke-static {v1, v2}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    :catch_9f
    move-exception v1

    goto :goto_94

    :cond_a1
    move-object v0, v1

    goto :goto_7a
.end method
