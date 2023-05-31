.class public Lcom/bytedance/sdk/openadsdk/core/h/h;
.super Ljava/lang/Object;
.source "SdkDnsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/h/h$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile d:Lcom/bytedance/sdk/openadsdk/core/h/h;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/h/e;

.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/e;)V
    .registers 6

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-nez p1, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object p1

    :cond_9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->a:Lcom/bytedance/sdk/openadsdk/core/h/e;

    .line 116
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->b:Landroid/content/Context;

    .line 117
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 119
    :try_start_17
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.bytedance.openadsdk.dnsSettingReceiver"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->b:Landroid/content/Context;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/h/h$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/h/h$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/h;Lcom/bytedance/sdk/openadsdk/core/h/h$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_29} :catch_2a

    .line 124
    :cond_29
    :goto_29
    return-void

    .line 121
    :catch_2a
    move-exception v0

    goto :goto_29
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/h/h;)Lcom/bytedance/sdk/openadsdk/core/h/e;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->a:Lcom/bytedance/sdk/openadsdk/core/h/e;

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/h/e;)Lcom/bytedance/sdk/openadsdk/core/h/h;
    .registers 3

    .prologue
    .line 50
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->d:Lcom/bytedance/sdk/openadsdk/core/h/h;

    if-nez v0, :cond_13

    .line 51
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/h/h;

    monitor-enter v1

    .line 52
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->d:Lcom/bytedance/sdk/openadsdk/core/h/h;

    if-nez v0, :cond_12

    .line 53
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/h;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/h/h;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/e;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->d:Lcom/bytedance/sdk/openadsdk/core/h/h;

    .line 55
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 57
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->d:Lcom/bytedance/sdk/openadsdk/core/h/h;

    return-object v0

    .line 55
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :goto_10
    const-string v1, "/q?host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 103
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :goto_1e
    const-string v1, "&aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "1371"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_2e
    const-string v1, "dig.bdurl.net"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 105
    :cond_34
    const-string v1, "is.snssdk.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "pangolin.snssdk.com"

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    :cond_6
    :goto_6
    return-void

    .line 169
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 171
    :try_start_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    const-string v1, "com.bytedance.openadsdk.dnsSettingReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "b_msg_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v1, "b_msg_data"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_29} :catch_2a

    goto :goto_6

    .line 176
    :catch_2a
    move-exception v0

    goto :goto_6
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 187
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_12

    .line 188
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/i/a;->b(Ljava/lang/Runnable;I)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 193
    :cond_12
    :goto_12
    return-void

    .line 190
    :catch_13
    move-exception v0

    .line 191
    const-string v1, "SdkDnsHelper"

    const-string v2, "load sdk dns settings error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 198
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Landroid/content/Context;)Z

    move-result v1

    .line 199
    if-nez v1, :cond_16

    .line 201
    :try_start_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->a:Lcom/bytedance/sdk/openadsdk/core/h/e;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a()V

    .line 202
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_15} :catch_3c

    .line 238
    :goto_15
    return-void

    .line 206
    :cond_16
    new-instance v1, Lcom/bytedance/sdk/adnet/b/f;

    invoke-direct {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/h/h$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/h/h$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/h;)V

    invoke-direct {v1, v4, v2, v0, v3}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 236
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/adnet/b/f;->setResponseOnMain(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    goto :goto_15

    .line 203
    :catch_3c
    move-exception v0

    goto :goto_15
.end method
