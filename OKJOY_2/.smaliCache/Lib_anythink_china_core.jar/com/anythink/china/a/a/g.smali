.class public final Lcom/anythink/china/a/a/g;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/anythink/china/a/a/h;

.field b:Landroid/content/ServiceConnection;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/anythink/china/a/a/g$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/a/a/g$1;-><init>(Lcom/anythink/china/a/a/g;)V

    iput-object v0, p0, Lcom/anythink/china/a/a/g;->b:Landroid/content/ServiceConnection;

    .line 40
    iput-object p1, p0, Lcom/anythink/china/a/a/g;->c:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 78
    nop

    .line 79
    iget-object v0, p0, Lcom/anythink/china/a/a/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 82
    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/anythink/china/a/a/g;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_17

    .line 86
    goto :goto_1c

    .line 84
    :catch_17
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    move-object v2, v1

    .line 88
    :goto_1c
    if-eqz v2, :cond_5d

    array-length v3, v2

    if-lez v3, :cond_5d

    .line 89
    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 92
    :try_start_28
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 93
    if-eqz v4, :cond_58

    .line 94
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    nop

    .line 97
    array-length v5, v2

    .line 99
    nop

    :goto_3c
    if-ge v3, v5, :cond_54

    .line 100
    aget-byte v6, v2, v3

    .line 101
    and-int/lit16 v6, v6, 0xff

    or-int/lit16 v6, v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 104
    :cond_54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_58} :catch_59

    .line 108
    :cond_58
    goto :goto_5d

    .line 107
    :catch_59
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :cond_5d
    :goto_5d
    iget-object v2, p0, Lcom/anythink/china/a/a/g;->a:Lcom/anythink/china/a/a/h;

    check-cast v2, Lcom/anythink/china/a/a/h$a$a;

    invoke-virtual {v2, v0, v1, p1}, Lcom/anythink/china/a/a/h$a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/anythink/china/a/a;)Ljava/lang/String;
    .registers 7

    .line 44
    nop

    .line 45
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, ""

    if-ne v0, v1, :cond_e

    .line 46
    return-object v2

    .line 48
    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.heytap.openid"

    const-string v4, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/anythink/china/a/a/g;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/china/a/a/g;->b:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 53
    const-wide/16 v0, 0xbb8

    :try_start_31
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    .line 56
    goto :goto_39

    .line 55
    :catchall_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    :goto_39
    iget-object v0, p0, Lcom/anythink/china/a/a/g;->a:Lcom/anythink/china/a/a/h;

    if-eqz v0, :cond_47

    .line 59
    const-string v0, "OUID"

    invoke-direct {p0, v0}, Lcom/anythink/china/a/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    .line 66
    :cond_47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 68
    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    .line 72
    :cond_50
    return-object v2
.end method
