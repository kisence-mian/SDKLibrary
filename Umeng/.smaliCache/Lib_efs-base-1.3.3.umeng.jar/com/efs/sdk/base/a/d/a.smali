.class public final Lcom/efs/sdk/base/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static a:Lcom/efs/sdk/base/a/c/a;


# instance fields
.field private b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private volatile g:Z

.field private h:Lcom/efs/sdk/base/a/d/a/a;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/EfsReporter$Builder;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/efs/sdk/base/a/d/a;->b:I

    .line 50
    iput v0, p0, Lcom/efs/sdk/base/a/d/a;->c:I

    .line 52
    const/4 v1, 0x1

    iput v1, p0, Lcom/efs/sdk/base/a/d/a;->d:I

    .line 54
    const/4 v1, 0x2

    iput v1, p0, Lcom/efs/sdk/base/a/d/a;->e:I

    .line 56
    const/4 v1, 0x3

    iput v1, p0, Lcom/efs/sdk/base/a/d/a;->f:I

    .line 61
    iput-boolean v0, p0, Lcom/efs/sdk/base/a/d/a;->g:Z

    .line 78
    invoke-virtual {p1}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/a/c/a;

    move-result-object p1

    sput-object p1, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    .line 79
    new-instance p1, Landroid/os/Handler;

    sget-object v1, Lcom/efs/sdk/base/a/h/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/efs/sdk/base/a/d/a;->i:Landroid/os/Handler;

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    return-void
.end method

.method public static a()Lcom/efs/sdk/base/a/c/a;
    .registers 1

    .line 107
    sget-object v0, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ZLjava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 7

    .line 264
    new-instance v0, Lcom/efs/sdk/base/a/f/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/efs/sdk/base/a/f/b;-><init>(Ljava/lang/String;B)V

    .line 265
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/efs/sdk/base/a/f/b;->b(I)V

    .line 266
    nop

    .line 16199
    iput-object p4, v0, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    .line 267
    invoke-virtual {v0, p2}, Lcom/efs/sdk/base/a/f/b;->a(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/f/b;->a(I)V

    .line 269
    nop

    .line 16222
    iget-object p0, v0, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iput-boolean p3, p0, Lcom/efs/sdk/base/a/f/c;->b:Z

    .line 270
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/f/b;->d()V

    .line 17035
    invoke-static {}, Lcom/efs/sdk/base/a/g/d$a;->a()Lcom/efs/sdk/base/a/g/d;

    move-result-object p0

    .line 271
    nop

    .line 17053
    iget-object p0, p0, Lcom/efs/sdk/base/a/g/d;->a:Lcom/efs/sdk/base/a/g/a;

    invoke-virtual {p0, v0}, Lcom/efs/sdk/base/a/g/a;->a(Lcom/efs/sdk/base/a/f/b;)V

    .line 272
    nop

    .line 17238
    iget-object p0, v0, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-object p0, p0, Lcom/efs/sdk/base/a/f/c;->c:Lcom/efs/sdk/base/http/HttpResponse;

    .line 272
    return-object p0
.end method

.method private b()V
    .registers 5

    .line 156
    iget-object v0, p0, Lcom/efs/sdk/base/a/d/a;->h:Lcom/efs/sdk/base/a/d/a/a;

    if-nez v0, :cond_b

    .line 157
    new-instance v0, Lcom/efs/sdk/base/a/d/a/a;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/d/a/a;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/d/a;->h:Lcom/efs/sdk/base/a/d/a/a;

    .line 161
    :cond_b
    :try_start_b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    sget-object v1, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/efs/sdk/base/a/d/a;->h:Lcom/efs/sdk/base/a/d/a/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1f

    .line 173
    return-void

    .line 164
    :catchall_1f
    move-exception v0

    .line 165
    const-string v1, "efs.base"

    const-string v2, "register network change receiver error"

    invoke-static {v1, v2, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    iget v0, p0, Lcom/efs/sdk/base/a/d/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/efs/sdk/base/a/d/a;->b:I

    .line 170
    const/4 v1, 0x3

    if-ge v0, v1, :cond_37

    .line 171
    iget-object v0, p0, Lcom/efs/sdk/base/a/d/a;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    :cond_37
    return-void
.end method

.method static synthetic b(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .registers 7

    .line 44
    nop

    .line 18107
    sget-object v0, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    .line 17243
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/c/a;->a(I)Ljava/util/List;

    move-result-object v0

    .line 17245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;

    .line 17246
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 17247
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLogType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "log_type"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17248
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->generateString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "log_data"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17249
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLinkKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "link_key"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17250
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLinkId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "link_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17251
    const/4 v4, 0x0

    invoke-static {v4, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 17252
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 17253
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 17254
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 17255
    invoke-virtual {v4}, Landroid/os/Message;->recycle()V

    .line 17256
    goto :goto_d

    .line 44
    :cond_5b
    return-void
.end method

.method private c(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .registers 3

    .line 209
    if-nez p1, :cond_3

    .line 210
    return-void

    .line 213
    :cond_3
    new-instance v0, Lcom/efs/sdk/base/a/d/a$1;

    invoke-direct {v0, p0, p1}, Lcom/efs/sdk/base/a/d/a$1;-><init>(Lcom/efs/sdk/base/a/d/a;Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/a/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 238
    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .registers 4

    .line 182
    iget-boolean v0, p0, Lcom/efs/sdk/base/a/d/a;->g:Z

    if-nez v0, :cond_13

    .line 183
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 184
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 185
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    iget-object p1, p0, Lcom/efs/sdk/base/a/d/a;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    return-void

    .line 190
    :cond_13
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/a/d/a;->c(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 191
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 8

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1d0

    goto/16 :goto_1ce

    .line 95
    :pswitch_8
    invoke-direct {p0}, Lcom/efs/sdk/base/a/d/a;->b()V

    goto/16 :goto_1ce

    .line 93
    :pswitch_d
    goto/16 :goto_1ce

    .line 90
    :pswitch_f
    nop

    .line 15194
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15196
    if-eqz p1, :cond_1d

    .line 15200
    instance-of v0, p1, Lcom/efs/sdk/base/protocol/ILogProtocol;

    if-eqz v0, :cond_1d

    .line 15204
    check-cast p1, Lcom/efs/sdk/base/protocol/ILogProtocol;

    .line 15205
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/a/d/a;->c(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 91
    :cond_1d
    goto/16 :goto_1ce

    .line 87
    :pswitch_1f
    nop

    .line 2053
    invoke-static {}, Lcom/efs/sdk/base/a/c/c$a;->a()Lcom/efs/sdk/base/a/c/c;

    move-result-object p1

    .line 1117
    nop

    .line 2061
    new-instance v0, Lcom/efs/sdk/base/a/c/b;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/c/b;-><init>()V

    iput-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    .line 2062
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    .line 2107
    sget-object v2, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    .line 2113
    iget-object v2, v2, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 2062
    const-string v3, "appid"

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2064
    invoke-static {}, Lcom/efs/sdk/base/a/h/g;->a()I

    move-result v0

    .line 2065
    iget-object v2, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "pid"

    invoke-virtual {v2, v4, v3}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2066
    iget-object v2, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/g;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ps"

    invoke-virtual {v2, v3, v0}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2067
    nop

    .line 3096
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3097
    iget-object v2, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    const-string v3, "wid"

    invoke-virtual {v2, v3, v0}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4107
    sget-object v2, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    .line 4129
    iget-object v2, v2, Lcom/efs/sdk/base/a/c/a;->h:Ljava/lang/String;

    .line 3100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "uid"

    if-eqz v2, :cond_71

    .line 3101
    iget-object v2, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    invoke-virtual {v2, v3, v0}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7a

    .line 3106
    :cond_71
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    .line 5107
    sget-object v2, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    .line 5129
    iget-object v2, v2, Lcom/efs/sdk/base/a/c/a;->h:Ljava/lang/String;

    .line 3106
    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2069
    :goto_7a
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "stime"

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2071
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    iget-object v2, p1, Lcom/efs/sdk/base/a/c/c;->b:Landroid/content/Context;

    .line 6026
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2071
    const-string v3, "pkg"

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2072
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    iget-object v2, p1, Lcom/efs/sdk/base/a/c/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/efs/sdk/base/a/h/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ver"

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2073
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    iget-object v2, p1, Lcom/efs/sdk/base/a/c/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/efs/sdk/base/a/h/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vcode"

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2074
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    const-string v2, "sdk_ver"

    const-string v3, "1.3.3.umeng"

    invoke-virtual {v0, v2, v3}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2077
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    .line 7025
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2077
    const-string v3, "brand"

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2078
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    .line 7033
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v2, :cond_d7

    const-string v2, "unknown"

    goto :goto_eb

    :cond_d7
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, " "

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 7034
    const-string v3, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2078
    :goto_eb
    const-string v3, "model"

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2080
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->b:Landroid/content/Context;

    .line 7051
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2080
    nop

    .line 2081
    iget-object v2, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dsp_w"

    invoke-virtual {v2, v4, v3}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2082
    iget-object v2, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "dsp_h"

    invoke-virtual {v2, v3, v0}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2085
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    const-string v2, "fr"

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2086
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    .line 7067
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2086
    const-string v3, "rom"

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2087
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    .line 7075
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2087
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sdk"

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2088
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    .line 8042
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 2088
    const-string v3, "lang"

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2089
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    .line 8059
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 2089
    const-string v3, "tzone"

    invoke-virtual {v0, v3, v2}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2090
    iget-object v0, p1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    iget-object p1, p1, Lcom/efs/sdk/base/a/c/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/efs/sdk/base/a/h/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "net"

    invoke-virtual {v0, v2, p1}, Lcom/efs/sdk/base/a/c/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9056
    invoke-static {}, Lcom/efs/sdk/base/a/e/f$a;->a()Lcom/efs/sdk/base/a/e/f;

    .line 1124
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/c/a/c;->b()V

    .line 1127
    nop

    .line 9146
    invoke-direct {p0}, Lcom/efs/sdk/base/a/d/a;->b()V

    .line 10053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 9149
    sget-object v0, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    .line 10178
    iget-boolean v0, v0, Lcom/efs/sdk/base/a/c/a;->i:Z

    .line 9150
    nop

    .line 11072
    iget-object v2, p1, Lcom/efs/sdk/base/a/i/f;->a:Lcom/efs/sdk/base/a/i/c;

    .line 12068
    if-eqz v0, :cond_183

    .line 12069
    const-string v0, "https://errlogos.umeng.com/api/crashsdk/logcollect"

    iput-object v0, v2, Lcom/efs/sdk/base/a/i/c;->a:Ljava/lang/String;

    .line 12070
    const-string v0, "4ea4e41a3993"

    iput-object v0, v2, Lcom/efs/sdk/base/a/i/c;->b:Ljava/lang/String;

    goto :goto_18b

    .line 12075
    :cond_183
    const-string v0, "https://errlog.umeng.com/api/crashsdk/logcollect"

    iput-object v0, v2, Lcom/efs/sdk/base/a/i/c;->a:Ljava/lang/String;

    .line 12076
    const-string v0, "28ef1713347d"

    iput-object v0, v2, Lcom/efs/sdk/base/a/i/c;->b:Ljava/lang/String;

    .line 11073
    :goto_18b
    nop

    .line 9150
    nop

    .line 9151
    nop

    .line 12082
    iput-object p0, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    .line 12083
    iget-object v0, p1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    iget-object v2, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    .line 13038
    iput-object v2, v0, Lcom/efs/sdk/base/a/i/a;->a:Lcom/efs/sdk/base/a/d/a;

    .line 12084
    iget-object v0, p1, Lcom/efs/sdk/base/a/i/f;->d:Lcom/efs/sdk/base/a/i/g;

    iget-object p1, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    .line 14038
    iput-object p1, v0, Lcom/efs/sdk/base/a/i/a;->a:Lcom/efs/sdk/base/a/d/a;

    .line 1131
    iput-boolean v1, p0, Lcom/efs/sdk/base/a/d/a;->g:Z

    .line 1134
    invoke-static {}, Lcom/efs/sdk/base/a/e/d;->a()Lcom/efs/sdk/base/a/e/d;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v2, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    .line 14137
    iget-wide v2, v2, Lcom/efs/sdk/base/a/c/a;->k:J

    .line 1134
    invoke-virtual {p1, v0, v2, v3}, Lcom/efs/sdk/base/a/e/d;->sendEmptyMessageDelayed(IJ)Z

    .line 15053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 1139
    nop

    .line 15093
    iget-object v0, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    if-eqz v0, :cond_1cd

    .line 15107
    sget-object v0, Lcom/efs/sdk/base/a/d/a;->a:Lcom/efs/sdk/base/a/c/a;

    .line 15186
    iget-boolean v0, v0, Lcom/efs/sdk/base/a/c/a;->d:Z

    .line 15093
    if-nez v0, :cond_1ba

    goto :goto_1cd

    .line 15097
    :cond_1ba
    new-instance v0, Lcom/efs/sdk/base/a/i/b;

    iget-object v2, p1, Lcom/efs/sdk/base/a/i/f;->a:Lcom/efs/sdk/base/a/i/c;

    iget-object v2, v2, Lcom/efs/sdk/base/a/i/c;->c:Ljava/lang/String;

    const-string v3, "efs_core"

    const-string v4, "pvuv"

    invoke-direct {v0, v3, v4, v2}, Lcom/efs/sdk/base/a/i/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15098
    iget-object p1, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 88
    goto :goto_1ce

    .line 15094
    :cond_1cd
    :goto_1cd
    nop

    .line 98
    :goto_1ce
    return v1

    nop

    :pswitch_data_1d0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_f
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method
