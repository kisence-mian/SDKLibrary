.class public Lcom/yxcorp/kuaishou/addfp/a/b/e/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/yxcorp/kuaishou/addfp/a/b/e/a;

.field private static c:Landroid/net/Uri;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->b:Lcom/yxcorp/kuaishou/addfp/a/b/e/a;

    const-string v0, "content://cn.nubia.identity/identity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->c:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/a/b/e/a;
    .registers 3

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->b:Lcom/yxcorp/kuaishou/addfp/a/b/e/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->b:Lcom/yxcorp/kuaishou/addfp/a/b/e/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;

    invoke-direct {v1, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->b:Lcom/yxcorp/kuaishou/addfp/a/b/e/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->b:Lcom/yxcorp/kuaishou/addfp/a/b/e/a;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    const/4 v1, 0x0

    if-lt p1, v0, :cond_27

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    invoke-virtual {p1, p2, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p1, :cond_33

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_23

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_33

    :cond_23
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_33

    :cond_27
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    :cond_33
    :goto_33
    if-eqz p2, :cond_49

    const-string p1, "code"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_49

    const-string p1, "id"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_45

    return-object p1

    :catchall_45
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_49
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public final a()Z
    .registers 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_46

    const/16 v1, 0x11

    const-string v2, "isSupport"

    const/4 v3, 0x0

    if-lt v0, v1, :cond_29

    :try_start_9
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_35

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_25

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_35

    :cond_25
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_35

    :cond_29
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_35
    :goto_35
    const-string v0, "code"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "issupport"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_46

    return v0

    :catchall_46
    move-exception v0

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_4a
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const-string v1, "getOAID"

    invoke-direct {p0, v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
