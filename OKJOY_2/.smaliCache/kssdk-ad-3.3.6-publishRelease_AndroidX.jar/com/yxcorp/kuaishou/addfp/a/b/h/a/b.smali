.class public Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile c:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

.field private static d:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;

.field private static e:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;

.field private static f:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;

.field private static g:Ljava/lang/Object;

.field private static h:Landroid/os/HandlerThread;

.field private static i:Landroid/os/Handler;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->c:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->d:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->e:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->f:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->g:Ljava/lang/Object;

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->h:Landroid/os/HandlerThread;

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->i:Landroid/os/Handler;

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->j:Ljava/lang/String;

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->b:Z

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->a:Landroid/content/Context;

    const-string v0, "persist.sys.identifierid.supported"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->b:Z

    if-eqz v0, :cond_33

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "vivo_work"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/c;

    sget-object v1, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/c;-><init>(Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->i:Landroid/os/Handler;

    :cond_33
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;
    .registers 3

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->c:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

    if-nez v0, :cond_17

    const-class v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->c:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

    invoke-direct {v1, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->c:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

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
    sget-object p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->c:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->b(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->j:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string p0, "unknown"

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p0

    :catchall_28
    move-exception p0

    return-object p1
.end method

.method private static b(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_6e

    goto :goto_31

    :pswitch_5
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :pswitch_15
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_24
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2c

    :pswitch_29
    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    goto :goto_24

    :goto_2c
    move-object v2, p1

    goto :goto_32

    :catchall_2e
    move-exception p0

    move-object p1, v0

    goto :goto_5d

    :goto_31
    move-object v2, v0

    :goto_32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_2e

    if-eqz p0, :cond_57

    :try_start_40
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_57

    const-string p1, "value"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_50
    .catchall {:try_start_40 .. :try_end_50} :catchall_52

    move-object v0, p1

    goto :goto_57

    :catchall_52
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_5d

    :cond_57
    :goto_57
    if-eqz p0, :cond_65

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_65

    :goto_5d
    :try_start_5d
    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_66

    if-eqz p1, :cond_65

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_65
    :goto_65
    return-object v0

    :catchall_66
    move-exception p0

    if-eqz p1, :cond_6c

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6c
    throw p0

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_29
        :pswitch_15
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic c()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->g:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 10

    :try_start_0
    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->g:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_63

    :try_start_3
    sget-object v1, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x29a

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "type"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1d

    const/4 v3, 0x2

    if-ne p1, v3, :cond_22

    :cond_1d
    const-string v3, "appid"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p2, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->i:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_60

    const-wide/16 v3, 0x7d0

    :try_start_30
    sget-object p2, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->g:Ljava/lang/Object;

    invoke-virtual {p2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_35} :catch_36
    .catchall {:try_start_30 .. :try_end_35} :catchall_60

    goto :goto_37

    :catch_36
    move-exception p2

    :goto_37
    :try_start_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    cmp-long p2, v5, v3

    if-gez p2, :cond_5e

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_68

    goto :goto_5e

    :pswitch_45
    sget-object p1, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto :goto_56

    :pswitch_4e
    sget-object p1, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5e

    :goto_56
    sput-object p2, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->j:Ljava/lang/String;

    goto :goto_5e

    :pswitch_59
    sget-object p1, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->j:Ljava/lang/String;

    sput-object p1, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->k:Ljava/lang/String;

    goto :goto_56

    :cond_5e
    :goto_5e
    monitor-exit v0

    goto :goto_67

    :catchall_60
    move-exception p1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_37 .. :try_end_62} :catchall_60

    :try_start_62
    throw p1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :goto_67
    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_59
        :pswitch_4e
        :pswitch_45
    .end packed-switch
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->b:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 6

    iget-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->a(ILjava/lang/String;)V

    sget-object v2, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->d:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->a:Landroid/content/Context;

    new-instance v3, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;

    sget-object v4, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->c:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

    invoke-direct {v3, v4, v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;-><init>(Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;ILjava/lang/String;)V

    sput-object v3, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->d:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->d:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2e
    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->k:Ljava/lang/String;

    return-object v0
.end method
