.class public Lcom/JoyFramework/module/point/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/JoyFramework/module/point/a;


# instance fields
.field private b:Lcom/JoyFramework/module/point/FloatViewService;

.field private final c:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/JoyFramework/module/point/b;

    invoke-direct {v0, p0}, Lcom/JoyFramework/module/point/b;-><init>(Lcom/JoyFramework/module/point/a;)V

    iput-object v0, p0, Lcom/JoyFramework/module/point/a;->c:Landroid/content/ServiceConnection;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/point/a;Lcom/JoyFramework/module/point/FloatViewService;)Lcom/JoyFramework/module/point/FloatViewService;
    .registers 2

    .prologue
    .line 16
    iput-object p1, p0, Lcom/JoyFramework/module/point/a;->b:Lcom/JoyFramework/module/point/FloatViewService;

    return-object p1
.end method

.method public static a()Lcom/JoyFramework/module/point/a;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcom/JoyFramework/module/point/a;->a:Lcom/JoyFramework/module/point/a;

    if-nez v0, :cond_f

    .line 30
    const-class v1, Lcom/JoyFramework/module/point/a;

    monitor-enter v1

    .line 31
    :try_start_7
    new-instance v0, Lcom/JoyFramework/module/point/a;

    invoke-direct {v0}, Lcom/JoyFramework/module/point/a;-><init>()V

    sput-object v0, Lcom/JoyFramework/module/point/a;->a:Lcom/JoyFramework/module/point/a;

    .line 32
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    .line 34
    :cond_f
    sget-object v0, Lcom/JoyFramework/module/point/a;->a:Lcom/JoyFramework/module/point/a;

    return-object v0

    .line 32
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 45
    invoke-static {}, Lcom/JoyFramework/module/point/a/a;->a()Lcom/JoyFramework/module/point/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/JoyFramework/module/point/a/a;->b(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/JoyFramework/module/point/FloatViewService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    iget-object v1, p0, Lcom/JoyFramework/module/point/a;->c:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 51
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/JoyFramework/module/point/a;->b:Lcom/JoyFramework/module/point/FloatViewService;

    if-eqz v0, :cond_9

    .line 58
    iget-object v0, p0, Lcom/JoyFramework/module/point/a;->b:Lcom/JoyFramework/module/point/FloatViewService;

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/FloatViewService;->showFloat()V

    .line 60
    :cond_9
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 76
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/JoyFramework/module/point/FloatViewService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 77
    iget-object v0, p0, Lcom/JoyFramework/module/point/a;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 81
    :goto_f
    return-void

    .line 79
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public c()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/JoyFramework/module/point/a;->b:Lcom/JoyFramework/module/point/FloatViewService;

    if-eqz v0, :cond_9

    .line 67
    iget-object v0, p0, Lcom/JoyFramework/module/point/a;->b:Lcom/JoyFramework/module/point/FloatViewService;

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/FloatViewService;->hideFloat()V

    .line 69
    :cond_9
    return-void
.end method
