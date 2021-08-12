.class public Lcom/ss/android/socialbase/appdownloader/e/d;
.super Ljava/lang/Object;
.source "NotificationPermissionHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/appdownloader/c/n;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/ss/android/socialbase/appdownloader/view/a;

.field private static d:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/ss/android/socialbase/appdownloader/e/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/e/d;->a:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/e/d;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 1

    .line 20
    sput-object p0, Lcom/ss/android/socialbase/appdownloader/e/d;->d:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/n;)V
    .registers 9

    const-class v0, Lcom/ss/android/socialbase/appdownloader/e/d;

    monitor-enter v0

    .line 60
    if-nez p1, :cond_7

    .line 61
    monitor-exit v0

    return-void

    .line 63
    :cond_7
    const/4 v1, 0x0

    if-eqz p0, :cond_7b

    :try_start_a
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_7b

    .line 68
    :cond_11
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_appdownloader_notification_request_title"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 69
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_appdownloader_notification_request_message"

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 70
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v4

    const-string v5, "tt_appdownloader_notification_request_btn_yes"

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 71
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v5

    const-string v6, "tt_appdownloader_notification_request_btn_no"

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 73
    sget-object v6, Lcom/ss/android/socialbase/appdownloader/e/d;->b:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v6, Lcom/ss/android/socialbase/appdownloader/e/d;->d:Landroid/app/AlertDialog;

    if-eqz v6, :cond_48

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_7a

    .line 75
    :cond_48
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/ss/android/socialbase/appdownloader/e/d$3;

    invoke-direct {v3, p0, p1}, Lcom/ss/android/socialbase/appdownloader/e/d$3;-><init>(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/n;)V

    .line 77
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/e/d$2;

    invoke-direct {p1}, Lcom/ss/android/socialbase/appdownloader/e/d$2;-><init>()V

    .line 85
    invoke-virtual {p0, v5, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/e/d$1;

    invoke-direct {p1}, Lcom/ss/android/socialbase/appdownloader/e/d$1;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 103
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/ss/android/socialbase/appdownloader/e/d;->d:Landroid/app/AlertDialog;

    .line 110
    :cond_7a
    goto :goto_87

    .line 64
    :cond_7b
    :goto_7b
    invoke-interface {p1}, Lcom/ss/android/socialbase/appdownloader/c/n;->b()V
    :try_end_7e
    .catchall {:try_start_a .. :try_end_7e} :catchall_80

    .line 65
    monitor-exit v0

    return-void

    .line 107
    :catchall_80
    move-exception p0

    .line 108
    :try_start_81
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/e/d;->a(Z)V
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_89

    .line 111
    :goto_87
    monitor-exit v0

    return-void

    .line 59
    :catchall_89
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Z)V
    .registers 4

    const-class v0, Lcom/ss/android/socialbase/appdownloader/e/d;

    monitor-enter v0

    .line 39
    :try_start_3
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/e/d;->d:Landroid/app/AlertDialog;

    if-eqz v1, :cond_d

    .line 40
    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 41
    const/4 v1, 0x0

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/e/d;->d:Landroid/app/AlertDialog;

    .line 43
    :cond_d
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/e/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 44
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/appdownloader/c/n;

    .line 46
    if-eqz v2, :cond_2a

    .line 47
    if-eqz p0, :cond_27

    .line 48
    invoke-interface {v2}, Lcom/ss/android/socialbase/appdownloader/c/n;->a()V

    goto :goto_2a

    .line 50
    :cond_27
    invoke-interface {v2}, Lcom/ss/android/socialbase/appdownloader/c/n;->b()V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    .line 52
    :cond_2a
    :goto_2a
    goto :goto_13

    .line 55
    :cond_2b
    goto :goto_30

    .line 53
    :catchall_2c
    move-exception p0

    .line 54
    :try_start_2d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_32

    .line 57
    :goto_30
    monitor-exit v0

    return-void

    .line 38
    :catchall_32
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()Z
    .registers 1

    .line 30
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return v0

    .line 31
    :catchall_d
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/n;)V
    .registers 5

    .line 115
    if-eqz p0, :cond_3b

    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3b

    .line 120
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 121
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/e/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/appdownloader/view/a;

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/e/d;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    .line 122
    if-nez v1, :cond_35

    .line 123
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/view/a;

    invoke-direct {v1}, Lcom/ss/android/socialbase/appdownloader/view/a;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/e/d;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    .line 124
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lcom/ss/android/socialbase/appdownloader/e/d;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_3f

    .line 126
    :try_start_2d
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    .line 129
    goto :goto_35

    .line 127
    :catchall_31
    move-exception p0

    .line 128
    :try_start_32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    :cond_35
    :goto_35
    sget-object p0, Lcom/ss/android/socialbase/appdownloader/e/d;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/a;->a()V

    .line 140
    goto :goto_4b

    .line 116
    :cond_3b
    :goto_3b
    invoke-interface {p1}, Lcom/ss/android/socialbase/appdownloader/c/n;->a()V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_3f

    .line 117
    return-void

    .line 133
    :catchall_3f
    move-exception p0

    .line 135
    :try_start_40
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    invoke-interface {p1}, Lcom/ss/android/socialbase/appdownloader/c/n;->a()V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_47

    .line 139
    goto :goto_4b

    .line 137
    :catchall_47
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    :goto_4b
    return-void
.end method
