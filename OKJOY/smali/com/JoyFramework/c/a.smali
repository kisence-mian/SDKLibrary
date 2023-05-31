.class public Lcom/JoyFramework/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/JoyFramework/c/a;

.field private static d:Lcom/JoyFramework/common/UserApiListenerInfo;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/JoyFramework/common/ExitListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/c/a;->c:Lcom/JoyFramework/c/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/JoyFramework/c/a;
    .registers 2

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_16

    .line 49
    :try_start_a
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The SDK must use in the main thread"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_12

    .line 50
    :catch_12
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    :cond_16
    sget-object v0, Lcom/JoyFramework/c/a;->c:Lcom/JoyFramework/c/a;

    if-nez v0, :cond_29

    .line 55
    const-class v1, Lcom/JoyFramework/c/e;

    monitor-enter v1

    .line 56
    :try_start_1d
    sget-object v0, Lcom/JoyFramework/c/a;->c:Lcom/JoyFramework/c/a;

    if-nez v0, :cond_28

    .line 57
    new-instance v0, Lcom/JoyFramework/c/a;

    invoke-direct {v0}, Lcom/JoyFramework/c/a;-><init>()V

    sput-object v0, Lcom/JoyFramework/c/a;->c:Lcom/JoyFramework/c/a;

    .line 59
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_2c

    .line 61
    :cond_29
    sget-object v0, Lcom/JoyFramework/c/a;->c:Lcom/JoyFramework/c/a;

    return-object v0

    .line 59
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public static a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 153
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/JoyFramework/common/ExtraDataInfo;)V
    .registers 2

    .prologue
    .line 124
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 165
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 166
    invoke-static {p1, p2, p3, p4, p5}, Lcom/JoyFramework/remote/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/JoyFramework/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v2

    new-instance v3, Lcom/JoyFramework/remote/b/c/b;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/c/b;

    invoke-direct {v5, p0, p1}, Lcom/JoyFramework/c/b;-><init>(Lcom/JoyFramework/c/a;Landroid/content/Context;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v1, v3}, Lcom/JoyFramework/remote/b/d/b;->c(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 185
    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .registers 1

    .prologue
    .line 148
    return-void
.end method

.method public static a(Lcom/JoyFramework/common/UserApiListenerInfo;)V
    .registers 1

    .prologue
    .line 118
    sput-object p0, Lcom/JoyFramework/c/a;->d:Lcom/JoyFramework/common/UserApiListenerInfo;

    .line 119
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 111
    sget-object v0, Lcom/JoyFramework/c/a;->d:Lcom/JoyFramework/common/UserApiListenerInfo;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/UserApiListenerInfo;->onLogout(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 130
    return-void
.end method

.method public static d(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 133
    return-void
.end method

.method public static e(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 137
    return-void
.end method

.method public static f(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 140
    return-void
.end method

.method public static g(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 144
    return-void
.end method

.method private h(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 188
    const-string v0, "insertAdId"

    .line 189
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "insertAdId"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/JoyFramework/remote/a/a;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/JoyFramework/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v2

    new-instance v3, Lcom/JoyFramework/remote/b/c/b;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/c/c;

    invoke-direct {v5, p0, p1}, Lcom/JoyFramework/c/c;-><init>(Lcom/JoyFramework/c/a;Landroid/app/Activity;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v1, v3}, Lcom/JoyFramework/remote/b/d/b;->l(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 227
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 8

    .prologue
    .line 84
    iget-object v1, p0, Lcom/JoyFramework/c/a;->a:Landroid/content/Context;

    const-string v2, "1"

    const-string v3, "1"

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/JoyFramework/common/ExitListener;)V
    .registers 3

    .prologue
    .line 100
    iput-object p2, p0, Lcom/JoyFramework/c/a;->b:Lcom/JoyFramework/common/ExitListener;

    .line 104
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/JoyFramework/remote/bean/ab;)V
    .registers 3

    .prologue
    .line 92
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/JoyFramework/remote/bean/k;)V
    .registers 5

    .prologue
    .line 73
    iput-object p1, p0, Lcom/JoyFramework/c/a;->a:Landroid/content/Context;

    .line 74
    check-cast p1, Landroid/app/Activity;

    const-string v0, "\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {p1, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 75
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
