.class public Lcom/ss/android/socialbase/appdownloader/j;
.super Ljava/lang/Object;
.source "NotificationPermissionHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/appdownloader/c/m;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/ss/android/socialbase/appdownloader/view/a;

.field private static d:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/ss/android/socialbase/appdownloader/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/j;->a:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/j;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 1

    .prologue
    .line 19
    sput-object p0, Lcom/ss/android/socialbase/appdownloader/j;->d:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/m;)V
    .registers 8
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ss/android/socialbase/appdownloader/c/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    const-class v1, Lcom/ss/android/socialbase/appdownloader/j;

    monitor-enter v1

    if-nez p1, :cond_7

    .line 110
    :cond_5
    :goto_5
    monitor-exit v1

    return-void

    .line 62
    :cond_7
    if-eqz p0, :cond_f

    :try_start_9
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 63
    :cond_f
    invoke-interface {p1}, Lcom/ss/android/socialbase/appdownloader/c/m;->b()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_13
    .catchall {:try_start_9 .. :try_end_12} :catchall_1c

    goto :goto_5

    .line 106
    :catch_13
    move-exception v0

    .line 107
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/j;->a(Z)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1c

    goto :goto_5

    .line 59
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 67
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    const-string v2, "appdownloader_notification_request_title"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/appdownloader/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 68
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v2

    const-string v3, "appdownloader_notification_request_message"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 69
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v3

    const-string v4, "appdownloader_notification_request_btn_yes"

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/appdownloader/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 70
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v4

    const-string v5, "appdownloader_notification_request_btn_no"

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/appdownloader/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 72
    sget-object v5, Lcom/ss/android/socialbase/appdownloader/j;->b:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v5, Lcom/ss/android/socialbase/appdownloader/j;->d:Landroid/app/AlertDialog;

    if-eqz v5, :cond_58

    sget-object v5, Lcom/ss/android/socialbase/appdownloader/j;->d:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_5

    .line 74
    :cond_58
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/j$3;

    invoke-direct {v2, p0, p1}, Lcom/ss/android/socialbase/appdownloader/j$3;-><init>(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/m;)V

    .line 76
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/j$2;

    invoke-direct {v2}, Lcom/ss/android/socialbase/appdownloader/j$2;-><init>()V

    .line 84
    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/j$1;

    invoke-direct {v2}, Lcom/ss/android/socialbase/appdownloader/j$1;-><init>()V

    .line 90
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/j;->d:Landroid/app/AlertDialog;
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_8b} :catch_13
    .catchall {:try_start_1f .. :try_end_8b} :catchall_1c

    goto/16 :goto_5
.end method

.method public static declared-synchronized a(Z)V
    .registers 4

    .prologue
    .line 38
    const-class v1, Lcom/ss/android/socialbase/appdownloader/j;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/j;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    .line 39
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/j;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/j;->d:Landroid/app/AlertDialog;

    .line 42
    :cond_f
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 43
    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/appdownloader/c/m;

    .line 45
    if-eqz v0, :cond_15

    .line 46
    if-eqz p0, :cond_2f

    .line 47
    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/m;->a()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_28} :catch_29
    .catchall {:try_start_3 .. :try_end_28} :catchall_33

    goto :goto_15

    .line 52
    :catch_29
    move-exception v0

    .line 53
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_33

    .line 56
    :cond_2d
    monitor-exit v1

    return-void

    .line 49
    :cond_2f
    :try_start_2f
    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/m;->b()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_29
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_15

    .line 38
    :catchall_33
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 29
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 33
    :goto_c
    return v0

    .line 30
    :catch_d
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public static b(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/m;)V
    .registers 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ss/android/socialbase/appdownloader/c/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    if-eqz p0, :cond_8

    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 115
    :cond_8
    invoke-interface {p1}, Lcom/ss/android/socialbase/appdownloader/c/m;->a()V

    .line 140
    :goto_b
    return-void

    .line 119
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 120
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/appdownloader/view/a;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/j;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    .line 121
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/j;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    if-nez v0, :cond_37

    .line 122
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/view/a;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/view/a;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/j;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    .line 123
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget-object v2, Lcom/ss/android/socialbase/appdownloader/j;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    sget-object v3, Lcom/ss/android/socialbase/appdownloader/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_34} :catch_3d

    .line 125
    :try_start_34
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_4a

    .line 131
    :cond_37
    :goto_37
    :try_start_37
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/j;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/view/a;->a()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_b

    .line 132
    :catch_3d
    move-exception v0

    .line 134
    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    invoke-interface {p1}, Lcom/ss/android/socialbase/appdownloader/c/m;->a()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_44} :catch_45

    goto :goto_b

    .line 136
    :catch_45
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 126
    :catch_4a
    move-exception v0

    .line 127
    :try_start_4b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_3d

    goto :goto_37
.end method
