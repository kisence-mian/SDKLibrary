.class public Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/os/Handler;

.field private static d:Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;


# instance fields
.field private b:I

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->b:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->c:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->c:Landroid/util/SparseArray;

    return-object p0
.end method

.method private a(Landroid/app/Activity;[Ljava/lang/String;Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;)V
    .registers 4

    invoke-virtual {p3, p2}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->onGranted([Ljava/lang/String;)V

    return-void
.end method

.method private a()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private a(Landroid/content/Context;)Z
    .registers 3

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->b(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0x17

    if-lt p1, v0, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private b()I
    .registers 3

    iget v0, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->b:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_d

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->b:I

    :cond_d
    iget v0, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->b:I

    return v0
.end method

.method private b(Landroid/content/Context;)I
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_19

    :catchall_14
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_18
    const/4 p1, -0x1

    :goto_19
    return p1
.end method

.method private b(Landroid/app/Activity;[Ljava/lang/String;Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;)V
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-lt v3, v1, :cond_59

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_55

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->b()I

    move-result v1

    new-instance v3, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;

    invoke-direct {v3, p0, p2, p3}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;-><init>(Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;[Ljava/lang/String;Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :try_start_1f
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "requestCode"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "requestPermission"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_3a

    goto :goto_58

    :catchall_3a
    move-exception p1

    const-string p1, "Can not found GrantActivity! Please update fn client tool."

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->onDenied([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_58

    :cond_55
    invoke-virtual {p3, p2}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->onGranted([Ljava/lang/String;)V

    :goto_58
    return-void

    :cond_59
    aget-object v4, p2, v3

    invoke-virtual {p0, p1, v4}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_64

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;
    .registers 2

    sget-object v0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->d:Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    if-nez v0, :cond_17

    const-class v0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->d:Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    if-nez v1, :cond_12

    new-instance v1, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;-><init>()V

    sput-object v1, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->d:Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->d:Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    return-object v0
.end method


# virtual methods
.method a(I)Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;->b:Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method a(I[Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ssjj/fnsdk/core/util/permission/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/ssjj/fnsdk/core/util/permission/c;-><init>(Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 4

    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    return-void
.end method

.method b(I)V
    .registers 4

    sget-object v0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ssjj/fnsdk/core/util/permission/b;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/core/util/permission/b;-><init>(Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkPermissions(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;)V
    .registers 4

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;)V

    return-void
.end method

.method public checkPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;)V
    .registers 5

    if-nez p3, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_17

    array-length v0, p2

    if-nez v0, :cond_9

    goto :goto_17

    :cond_9
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->b(Landroid/app/Activity;[Ljava/lang/String;Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;)V

    goto :goto_16

    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;)V

    :goto_16
    return-void

    :cond_17
    :goto_17
    const-string p1, "Request permissions is null or empty!"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->onGranted([Ljava/lang/String;)V

    return-void
.end method

.method public checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, p2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_a

    if-nez p1, :cond_8

    return v0

    :cond_8
    const/4 p1, 0x0

    return p1

    :catchall_a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method
