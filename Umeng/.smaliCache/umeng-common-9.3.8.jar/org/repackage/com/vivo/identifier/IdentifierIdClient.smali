.class public Lorg/repackage/com/vivo/identifier/IdentifierIdClient;
.super Ljava/lang/Object;
.source "IdentifierIdClient.java"


# static fields
.field private static A:Ljava/lang/String; = null

.field private static volatile B:Lorg/repackage/com/vivo/identifier/IdentifierIdClient; = null

.field private static volatile C:Lorg/repackage/com/vivo/identifier/DataBaseOperation; = null

.field private static final a:Ljava/lang/String; = "VMS_IDLG_SDK_Client"

.field private static final b:Ljava/lang/String; = "content://com.vivo.vms.IdProvider/IdentifierId"

.field private static final c:Ljava/lang/String; = "persist.sys.identifierid.supported"

.field private static final d:Ljava/lang/String; = "appid"

.field private static final e:Ljava/lang/String; = "type"

.field private static final f:Ljava/lang/String; = "OAID"

.field private static final g:Ljava/lang/String; = "VAID"

.field private static final h:Ljava/lang/String; = "AAID"

.field private static final i:I = 0x0

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:I = 0x4

.field private static final m:I = 0xb

.field private static final n:I = 0x7d0

.field private static o:Landroid/content/Context;

.field private static p:Z

.field private static q:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

.field private static r:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

.field private static s:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

.field private static t:Ljava/lang/Object;

.field private static u:Landroid/os/HandlerThread;

.field private static v:Landroid/os/Handler;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->p:Z

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->q:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    .line 49
    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->r:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    .line 50
    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->s:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    .line 51
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->t:Ljava/lang/Object;

    .line 52
    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->u:Landroid/os/HandlerThread;

    .line 53
    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->v:Landroid/os/Handler;

    .line 54
    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->w:Ljava/lang/String;

    .line 55
    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->x:Ljava/lang/String;

    .line 56
    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->y:Ljava/lang/String;

    .line 57
    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->z:Ljava/lang/String;

    .line 58
    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->A:Ljava/lang/String;

    .line 60
    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->B:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    .line 61
    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->C:Lorg/repackage/com/vivo/identifier/DataBaseOperation;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 225
    nop

    .line 227
    :try_start_1
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 228
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

    .line 229
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string p0, "unknown"

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2d
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    .line 233
    return-object p0

    :catchall_2b
    move-exception p0

    goto :goto_31

    .line 230
    :catch_2d
    move-exception p0

    .line 231
    :try_start_2e
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2b

    .line 233
    :goto_31
    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/IdentifierIdClient;
    .registers 3

    .line 68
    const-class v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    sget-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->B:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    if-nez v1, :cond_19

    .line 69
    monitor-enter v0

    .line 70
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->o:Landroid/content/Context;

    .line 71
    new-instance v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    invoke-direct {v1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;-><init>()V

    sput-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->B:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    .line 72
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0

    .line 75
    :cond_19
    :goto_19
    sget-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->C:Lorg/repackage/com/vivo/identifier/DataBaseOperation;

    if-nez v1, :cond_38

    .line 76
    monitor-enter v0

    .line 77
    :try_start_1e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->o:Landroid/content/Context;

    .line 78
    invoke-static {}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->g()V

    .line 79
    new-instance p0, Lorg/repackage/com/vivo/identifier/DataBaseOperation;

    sget-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->o:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/repackage/com/vivo/identifier/DataBaseOperation;-><init>(Landroid/content/Context;)V

    sput-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->C:Lorg/repackage/com/vivo/identifier/DataBaseOperation;

    .line 80
    invoke-static {}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->d()V

    .line 81
    monitor-exit v0

    goto :goto_38

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    throw p0

    .line 83
    :cond_38
    :goto_38
    sget-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->B:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    return-object p0
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .line 238
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_76

    goto :goto_75

    .line 248
    :pswitch_6
    new-instance p1, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->B:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v2, p2}, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;-><init>(Lorg/repackage/com/vivo/identifier/IdentifierIdClient;ILjava/lang/String;)V

    sput-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->s:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->s:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 250
    goto :goto_75

    .line 244
    :pswitch_31
    new-instance p1, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    sget-object v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->B:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    invoke-direct {p1, v2, v0, p2}, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;-><init>(Lorg/repackage/com/vivo/identifier/IdentifierIdClient;ILjava/lang/String;)V

    sput-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->r:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->r:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 246
    goto :goto_75

    .line 240
    :pswitch_5b
    new-instance p1, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    sget-object p2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->B:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, v2}, Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;-><init>(Lorg/repackage/com/vivo/identifier/IdentifierIdClient;ILjava/lang/String;)V

    sput-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->q:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->q:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 242
    nop

    .line 255
    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_31
        :pswitch_6
    .end packed-switch
.end method

.method private b(ILjava/lang/String;)V
    .registers 6

    .line 208
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->v:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 209
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 210
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 211
    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1a

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1f

    .line 213
    :cond_1a
    const-string p1, "appid"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_1f
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 216
    sget-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->v:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 218
    return-void
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 27
    sput-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->w:Ljava/lang/String;

    return-object p0
.end method

.method public static d()V
    .registers 2

    .line 221
    const-string v0, "persist.sys.identifierid.supported"

    const-string v1, "0"

    invoke-static {v0, v1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->p:Z

    .line 222
    return-void
.end method

.method static synthetic e()Lorg/repackage/com/vivo/identifier/DataBaseOperation;
    .registers 1

    .line 27
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->C:Lorg/repackage/com/vivo/identifier/DataBaseOperation;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Object;
    .registers 1

    .line 27
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->t:Ljava/lang/Object;

    return-object v0
.end method

.method private static g()V
    .registers 2

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SqlWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->u:Landroid/os/HandlerThread;

    .line 88
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient$1;

    sget-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->u:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->v:Landroid/os/Handler;

    .line 104
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 125
    invoke-virtual {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 126
    const/4 p1, 0x0

    return-object p1

    .line 128
    :cond_8
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->y:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 129
    return-object v0

    .line 131
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(ILjava/lang/String;)V

    .line 132
    sget-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->r:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    if-nez v1, :cond_1e

    sget-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->y:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 133
    sget-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->o:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 135
    :cond_1e
    sget-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->y:Ljava/lang/String;

    return-object p1
.end method

.method public a(ILjava/lang/String;)V
    .registers 10

    .line 162
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_3
    invoke-direct {p0, p1, p2}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->b(ILjava/lang/String;)V

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_5c

    .line 166
    const-wide/16 v3, 0x7d0

    :try_start_c
    sget-object p2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->t:Ljava/lang/Object;

    invoke-virtual {p2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_5c

    .line 169
    goto :goto_16

    .line 167
    :catch_12
    move-exception p2

    .line 168
    :try_start_13
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 170
    :goto_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 171
    sub-long/2addr v5, v1

    cmp-long p2, v5, v3

    if-gez p2, :cond_53

    .line 172
    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_60

    .line 197
    :pswitch_23
    goto :goto_5a

    .line 186
    :pswitch_24
    sget-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->w:Ljava/lang/String;

    if-eqz p1, :cond_2d

    .line 187
    sput-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->z:Ljava/lang/String;

    .line 188
    sput-object p2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->w:Ljava/lang/String;

    goto :goto_34

    .line 190
    :cond_2d
    const-string p1, "VMS_IDLG_SDK_Client"

    const-string v1, "get aaid failed"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_34
    :pswitch_34
    sget-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->w:Ljava/lang/String;

    sput-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->A:Ljava/lang/String;

    .line 194
    sput-object p2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->w:Ljava/lang/String;

    .line 195
    goto :goto_5a

    .line 178
    :pswitch_3b
    sget-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->w:Ljava/lang/String;

    if-eqz p1, :cond_44

    .line 179
    sput-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->y:Ljava/lang/String;

    .line 180
    sput-object p2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->w:Ljava/lang/String;

    goto :goto_5a

    .line 182
    :cond_44
    const-string p1, "VMS_IDLG_SDK_Client"

    const-string p2, "get vaid failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    goto :goto_5a

    .line 174
    :pswitch_4c
    sget-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->w:Ljava/lang/String;

    sput-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->x:Ljava/lang/String;

    .line 175
    sput-object p2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->w:Ljava/lang/String;

    .line 176
    goto :goto_5a

    .line 201
    :cond_53
    const-string p1, "VMS_IDLG_SDK_Client"

    const-string p2, "query timeout"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_5a
    monitor-exit v0

    .line 205
    return-void

    .line 203
    :catchall_5c
    move-exception p1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_13 .. :try_end_5e} :catchall_5c

    throw p1

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_3b
        :pswitch_24
        :pswitch_23
        :pswitch_34
    .end packed-switch
.end method

.method public a()Z
    .registers 2

    .line 107
    sget-boolean v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->p:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .line 111
    invoke-virtual {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 112
    return-object v1

    .line 114
    :cond_8
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->x:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 115
    return-object v0

    .line 117
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(ILjava/lang/String;)V

    .line 118
    sget-object v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->q:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    if-nez v2, :cond_1a

    .line 119
    sget-object v2, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->o:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 121
    :cond_1a
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->x:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 139
    invoke-virtual {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 140
    const/4 p1, 0x0

    return-object p1

    .line 142
    :cond_8
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->z:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 143
    return-object v0

    .line 145
    :cond_d
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(ILjava/lang/String;)V

    .line 146
    sget-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->s:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

    if-nez v1, :cond_1e

    sget-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->z:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 147
    sget-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->o:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 149
    :cond_1e
    sget-object p1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->z:Ljava/lang/String;

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 153
    invoke-virtual {p0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 154
    return-object v1

    .line 156
    :cond_8
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(ILjava/lang/String;)V

    .line 157
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->A:Ljava/lang/String;

    return-object v0
.end method
