.class public Lorg/repackage/a/a/a/a/c;
.super Ljava/lang/Object;
.source "OpenIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/repackage/a/a/a/a/c$a;
    }
.end annotation


# instance fields
.field public a:Lorg/repackage/a/a/a/a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/Object;

.field public e:Landroid/content/ServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lorg/repackage/a/a/a/a/b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/repackage/a/a/a/a/c;->a:Lorg/repackage/a/a/a/a;

    .line 3
    iput-object p1, p0, Lorg/repackage/a/a/a/a/c;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/repackage/a/a/a/a/c;->c:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/repackage/a/a/a/a/c;->d:Ljava/lang/Object;

    .line 5
    new-instance p1, Lorg/repackage/a/a/a/a/b;

    invoke-direct {p1, p0}, Lorg/repackage/a/a/a/a/b;-><init>(Lorg/repackage/a/a/a/a/c;)V

    iput-object p1, p0, Lorg/repackage/a/a/a/a/c;->e:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 6
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_67

    .line 7
    iget-object v0, p0, Lorg/repackage/a/a/a/a/c;->a:Lorg/repackage/a/a/a/a;

    if-nez v0, :cond_59

    .line 8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v1, p0, Lorg/repackage/a/a/a/a/c;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 12
    iget-object v0, p0, Lorg/repackage/a/a/a/a/c;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_6f

    .line 13
    :try_start_31
    iget-object v1, p0, Lorg/repackage/a/a/a/a/c;->d:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_38} :catch_3b
    .catchall {:try_start_31 .. :try_end_38} :catchall_39

    goto :goto_3f

    :catchall_39
    move-exception p1

    goto :goto_41

    .line 14
    :catch_3b
    move-exception v1

    :try_start_3c
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 15
    :goto_3f
    monitor-exit v0

    goto :goto_43

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_39

    :try_start_42
    throw p1

    .line 16
    :cond_43
    :goto_43
    iget-object v0, p0, Lorg/repackage/a/a/a/a/c;->a:Lorg/repackage/a/a/a/a;

    if-nez v0, :cond_4b

    const-string p1, ""
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_6f

    monitor-exit p0

    return-object p1

    .line 17
    :cond_4b
    :try_start_4b
    invoke-virtual {p0, p1, p2}, Lorg/repackage/a/a/a/a/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4f} :catch_51
    .catchall {:try_start_4b .. :try_end_4f} :catchall_6f

    monitor-exit p0

    return-object p1

    .line 18
    :catch_51
    move-exception p1

    :try_start_52
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p1, ""
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_6f

    monitor-exit p0

    return-object p1

    .line 19
    :cond_59
    :try_start_59
    invoke-virtual {p0, p1, p2}, Lorg/repackage/a/a/a/a/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5d} :catch_5f
    .catchall {:try_start_59 .. :try_end_5d} :catchall_6f

    monitor-exit p0

    return-object p1

    .line 20
    :catch_5f
    move-exception p1

    :try_start_60
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p1, ""
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_6f

    monitor-exit p0

    return-object p1

    .line 21
    :cond_67
    :try_start_67
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot run on MainThread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_6f

    .line 5
    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/content/Context;)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_2c

    const-string v1, "com.heytap.openid"

    :try_start_7
    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v1, v2, :cond_22

    if-eqz p1, :cond_20

    .line 3
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    const-wide/16 v4, 0x1

    cmp-long p1, v1, v4

    if-ltz p1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    nop

    :goto_21
    return v0

    :cond_22
    if-eqz p1, :cond_2a

    .line 4
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_26} :catch_2c

    if-lt p1, v3, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    nop

    :goto_2b
    return v0

    .line 5
    :catch_2c
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    iget-object v0, p0, Lorg/repackage/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/repackage/a/a/a/a/c;->b:Ljava/lang/String;

    .line 3
    :cond_e
    iget-object v0, p0, Lorg/repackage/a/a/a/a/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 4
    iget-object v0, p0, Lorg/repackage/a/a/a/a/c;->b:Ljava/lang/String;

    .line 5
    const/4 v1, 0x0

    :try_start_19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x40

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 6
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_25} :catch_26

    goto :goto_2b

    .line 7
    :catch_26
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p1, v1

    :goto_2b
    if-eqz p1, :cond_6a

    .line 8
    array-length v0, p1

    if-lez v0, :cond_6a

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v2, "SHA1"

    .line 9
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 10
    :try_start_39
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 11
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    array-length v3, p1

    :goto_49
    if-ge v0, v3, :cond_61

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 15
    :cond_61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_65
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_39 .. :try_end_65} :catch_66

    goto :goto_6b

    .line 16
    :catch_66
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_6a
    nop

    .line 17
    :goto_6b
    iput-object v1, p0, Lorg/repackage/a/a/a/a/c;->c:Ljava/lang/String;

    .line 18
    :cond_6d
    iget-object p1, p0, Lorg/repackage/a/a/a/a/c;->a:Lorg/repackage/a/a/a/a;

    iget-object v0, p0, Lorg/repackage/a/a/a/a/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/repackage/a/a/a/a/c;->c:Ljava/lang/String;

    check-cast p1, Lorg/repackage/a/a/a/a$a$a;

    invoke-virtual {p1, v0, v1, p2}, Lorg/repackage/a/a/a/a$a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_81

    const-string p1, ""

    :cond_81
    return-object p1
.end method
