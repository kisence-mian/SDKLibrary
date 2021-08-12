.class public final Lcom/yxcorp/kuaishou/addfp/android/b/f;
.super Ljava/lang/Object;


# static fields
.field private static c:Landroid/content/Context;


# instance fields
.field public a:Lcom/yxcorp/kuaishou/addfp/android/b/h;

.field private final b:Ljava/lang/Class;

.field private d:Lcom/yxcorp/kuaishou/addfp/android/b/i;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/b/f;->e:[Ljava/lang/String;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/b/f;->f:[Ljava/lang/String;

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/b/f;->b()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/b/f;->b:Ljava/lang/Class;

    new-instance v0, Lcom/yxcorp/kuaishou/addfp/android/b/h;

    invoke-direct {v0, p0}, Lcom/yxcorp/kuaishou/addfp/android/b/h;-><init>(Lcom/yxcorp/kuaishou/addfp/android/b/f;)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/b/f;->a:Lcom/yxcorp/kuaishou/addfp/android/b/h;

    new-instance v0, Lcom/yxcorp/kuaishou/addfp/android/b/i;

    invoke-direct {v0, p0}, Lcom/yxcorp/kuaishou/addfp/android/b/i;-><init>(Lcom/yxcorp/kuaishou/addfp/android/b/f;)V

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/b/f;->d:Lcom/yxcorp/kuaishou/addfp/android/b/i;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/f;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/android/b/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/android/b/f;Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcel;Landroid/os/Parcel;)Landroid/os/Parcel;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yxcorp/kuaishou/addfp/android/b/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcel;Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcel;Landroid/os/Parcel;)Landroid/os/Parcel;
    .registers 13

    invoke-direct {p0, p1}, Lcom/yxcorp/kuaishou/addfp/android/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    if-nez p2, :cond_a

    goto :goto_5d

    :cond_a
    const/4 v2, 0x0

    :try_start_b
    iget-object v3, p0, Lcom/yxcorp/kuaishou/addfp/android/b/f;->b:Ljava/lang/Class;

    const-string v4, "getService"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_47

    :try_start_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "$Stub"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_45

    goto :goto_4d

    :catchall_45
    move-exception p2

    goto :goto_49

    :catchall_47
    move-exception p2

    move-object p1, v1

    :goto_49
    invoke-static {p2}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    const/4 p2, -0x1

    :goto_4d
    if-eqz p1, :cond_5d

    if-gez p2, :cond_52

    goto :goto_5d

    :cond_52
    :try_start_52
    check-cast p1, Landroid/os/IBinder;

    invoke-interface {p1, p2, p3, p4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :goto_5c
    return-object p4

    :cond_5d
    :goto_5d
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/b/f;
    .registers 1

    sput-object p0, Lcom/yxcorp/kuaishou/addfp/android/b/f;->c:Landroid/content/Context;

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/b/g;->a()Lcom/yxcorp/kuaishou/addfp/android/b/f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/android/b/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/yxcorp/kuaishou/addfp/android/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/yxcorp/kuaishou/addfp/android/b/f;->b:Ljava/lang/Class;

    const-string v4, "getService"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v8

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    const v3, 0x5f4e5446

    invoke-interface {p1, v3, v0, v1, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p1

    :try_start_2f
    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_39

    :goto_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_39
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method private static b()Ljava/lang/Class;
    .registers 1

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method
