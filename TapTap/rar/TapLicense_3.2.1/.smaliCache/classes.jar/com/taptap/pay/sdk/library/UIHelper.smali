.class Lcom/taptap/pay/sdk/library/UIHelper;
.super Ljava/lang/Object;
.source "UIHelper.java"


# static fields
.field protected static dialog:Lcom/taptap/pay/sdk/library/TapAlertDialog;

.field protected static executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field protected static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/taptap/pay/sdk/library/UIHelper;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissDialog()V
    .registers 1

    .line 85
    sget-object v0, Lcom/taptap/pay/sdk/library/UIHelper;->dialog:Lcom/taptap/pay/sdk/library/TapAlertDialog;

    if-eqz v0, :cond_a

    .line 86
    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->dismiss()V

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/taptap/pay/sdk/library/UIHelper;->dialog:Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 89
    :cond_a
    return-void
.end method

.method public static declared-synchronized runAsyncThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    const-class v0, Lcom/taptap/pay/sdk/library/UIHelper;

    monitor-enter v0

    .line 18
    :try_start_3
    sget-object v1, Lcom/taptap/pay/sdk/library/UIHelper;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_f

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v1, Lcom/taptap/pay/sdk/library/UIHelper;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 21
    :cond_f
    sget-object v1, Lcom/taptap/pay/sdk/library/UIHelper;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 22
    monitor-exit v0

    return-void

    .line 17
    .end local p0    # "runnable":Ljava/lang/Runnable;
    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static showChecking(Landroid/app/Activity;Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)Lcom/taptap/pay/sdk/library/TapAlertDialog;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    .line 72
    new-instance v0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    invoke-direct {v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;-><init>()V

    .line 73
    .local v0, "builder":Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
    invoke-virtual {v0, p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setContext(Landroid/content/Context;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1, p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setOnAlertClickListener(Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setCanceledBackPress(Z)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 77
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setType(I)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->build()Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 79
    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->build()Lcom/taptap/pay/sdk/library/TapAlertDialog;

    move-result-object v1

    .line 80
    .local v1, "dialog":Lcom/taptap/pay/sdk/library/TapAlertDialog;
    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->show()V

    .line 81
    return-object v1
.end method

.method public static showChooser(Landroid/app/Activity;Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;Lcom/taptap/pay/sdk/library/TapIconTitle;Lcom/taptap/pay/sdk/library/TapIconTitle;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;
    .param p2, "cnRes"    # Lcom/taptap/pay/sdk/library/TapIconTitle;
    .param p3, "globalRes"    # Lcom/taptap/pay/sdk/library/TapIconTitle;

    .line 29
    new-instance v0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    invoke-direct {v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;-><init>()V

    .line 30
    .local v0, "builder":Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
    invoke-virtual {v0, p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setContext(Landroid/content/Context;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 31
    invoke-virtual {v1, p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setOnAlertClickListener(Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 32
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setCanceledBackPress(Z)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setType(I)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1, p2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setTapCNRes(Lcom/taptap/pay/sdk/library/TapIconTitle;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1, p3}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setTapGlobalRes(Lcom/taptap/pay/sdk/library/TapIconTitle;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->build()Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 38
    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->build()Lcom/taptap/pay/sdk/library/TapAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->show()V

    .line 39
    return-void
.end method

.method public static showNoInstalled(Landroid/app/Activity;Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    .line 58
    new-instance v0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    invoke-direct {v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;-><init>()V

    .line 59
    .local v0, "builder":Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
    invoke-virtual {v0, p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setContext(Landroid/content/Context;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1, p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setOnAlertClickListener(Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 61
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setCanceledBackPress(Z)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 63
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setType(I)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->build()Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 65
    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->build()Lcom/taptap/pay/sdk/library/TapAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->show()V

    .line 66
    return-void
.end method

.method public static showNoLicensed(Landroid/app/Activity;Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    .line 45
    new-instance v0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    invoke-direct {v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;-><init>()V

    .line 46
    .local v0, "builder":Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
    invoke-virtual {v0, p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setContext(Landroid/content/Context;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {v1, p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setOnAlertClickListener(Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setCanceledBackPress(Z)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 50
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->setType(I)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->build()Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 52
    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->build()Lcom/taptap/pay/sdk/library/TapAlertDialog;

    move-result-object v1

    sput-object v1, Lcom/taptap/pay/sdk/library/UIHelper;->dialog:Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 53
    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->show()V

    .line 54
    return-void
.end method
