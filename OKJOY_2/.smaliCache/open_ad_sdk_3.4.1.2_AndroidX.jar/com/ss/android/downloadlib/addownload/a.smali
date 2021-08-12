.class public Lcom/ss/android/downloadlib/addownload/a;
.super Ljava/lang/Object;
.source "AdDelayTaskManager.java"

# interfaces
.implements Lcom/ss/android/downloadlib/h/l$a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/ss/android/downloadlib/addownload/a;


# instance fields
.field private c:Lcom/ss/android/downloadlib/h/l;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/ss/android/downloadlib/addownload/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/addownload/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/ss/android/downloadlib/h/l;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/h/l;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/h/l$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/a;->c:Lcom/ss/android/downloadlib/h/l;

    .line 50
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/a;
    .registers 2

    .line 39
    sget-object v0, Lcom/ss/android/downloadlib/addownload/a;->b:Lcom/ss/android/downloadlib/addownload/a;

    if-nez v0, :cond_17

    .line 40
    const-class v0, Lcom/ss/android/downloadlib/addownload/a;

    monitor-enter v0

    .line 41
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/addownload/a;->b:Lcom/ss/android/downloadlib/addownload/a;

    if-nez v1, :cond_12

    .line 42
    new-instance v1, Lcom/ss/android/downloadlib/addownload/a;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/a;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/a;->b:Lcom/ss/android/downloadlib/addownload/a;

    .line 44
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 46
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/addownload/a;->b:Lcom/ss/android/downloadlib/addownload/a;

    return-object v0
.end method

.method private a(Lcom/ss/android/downloadlib/addownload/b/a;I)V
    .registers 8

    .line 104
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->k()Lcom/ss/android/a/a/a/b;

    move-result-object v0

    if-nez v0, :cond_7

    .line 105
    return-void

    .line 107
    :cond_7
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->k()Lcom/ss/android/a/a/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->s()Z

    move-result v0

    if-nez v0, :cond_18

    .line 108
    return-void

    .line 110
    :cond_18
    if-nez p1, :cond_1b

    .line 111
    return-void

    .line 113
    :cond_1b
    const/4 v0, 0x2

    if-ne v0, p2, :cond_6e

    .line 114
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    invoke-virtual {p2, v0, v1}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object p2

    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    const/4 v1, -0x1

    .line 118
    :try_start_2e
    const-string v2, "ttdownloader_type"

    const-string v3, "miui_silent_install"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ss/android/downloadlib/h/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3f} :catch_51

    const-string v3, "ttdownloader_message"

    if-eqz v2, :cond_4a

    .line 120
    :try_start_43
    const-string v2, "miui_silent_install_succeed"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const/4 v1, 0x4

    goto :goto_50

    .line 123
    :cond_4a
    const-string v2, "miui_silent_install_failed: has started service"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4f} :catch_51

    .line 124
    const/4 v1, 0x5

    .line 127
    :goto_50
    goto :goto_52

    .line 126
    :catch_51
    move-exception v2

    .line 128
    :goto_52
    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->g()Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2, v1}, Lcom/ss/android/socialbase/appdownloader/c/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 130
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    const-string v2, "embeded_ad"

    const-string v3, "ah_result"

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 132
    :cond_6e
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ss/android/downloadlib/h/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_86

    .line 133
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    const-string p1, "delayinstall_installed"

    invoke-virtual {p2, p1, v0, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;J)V

    .line 134
    return-void

    .line 136
    :cond_86
    iget-object p2, p1, Lcom/ss/android/downloadlib/addownload/b/a;->g:Ljava/lang/String;

    invoke-static {p2}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9a

    .line 137
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    const-string p1, "delayinstall_file_lost"

    invoke-virtual {p2, p1, v0, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;J)V

    .line 138
    return-void

    .line 140
    :cond_9a
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/a/a;->a()Lcom/ss/android/downloadlib/addownload/a/a;

    move-result-object p2

    iget-object v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/ss/android/downloadlib/addownload/a/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b2

    .line 141
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    const-string p1, "delayinstall_conflict_with_back_dialog"

    invoke-virtual {p2, p1, v0, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;J)V

    .line 142
    return-void

    .line 144
    :cond_b2
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    const-string v2, "delayinstall_install_start"

    invoke-virtual {p2, v2, v0, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;J)V

    .line 145
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p2

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/a;->a:J

    long-to-int p1, v0

    invoke-static {p2, p1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;I)Z

    .line 146
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 3

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    goto :goto_10

    .line 154
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/downloadlib/addownload/b/a;

    .line 155
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/ss/android/downloadlib/addownload/a;->a(Lcom/ss/android/downloadlib/addownload/b/a;I)V

    .line 156
    nop

    .line 160
    :goto_10
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0xc8
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    .line 59
    move-object v1, p0

    new-instance v13, Lcom/ss/android/downloadlib/addownload/b/a;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    int-to-long v3, v0

    move-object v2, v13

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v2 .. v12}, Lcom/ss/android/downloadlib/addownload/b/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 61
    const-string v2, "back_miui_silent_install"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xc8

    if-nez v2, :cond_ac

    .line 62
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->k()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->l()Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 63
    :cond_37
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v2

    const-string v4, "com.miui.securitycore"

    const-string v5, "com.miui.enterprise.service.EntInstallService"

    invoke-static {v2, v4, v5}, Lcom/ss/android/socialbase/downloader/i/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 65
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-string v4, "extra_silent_install_succeed"

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 67
    iget-object v2, v1, Lcom/ss/android/downloadlib/addownload/a;->c:Lcom/ss/android/downloadlib/h/l;

    invoke-virtual {v2, v3, v13}, Lcom/ss/android/downloadlib/h/l;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 68
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 69
    const v3, 0xea60

    const-string v4, "check_silent_install_interval"

    invoke-virtual {v0, v4, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 70
    iget-object v3, v1, Lcom/ss/android/downloadlib/addownload/a;->c:Lcom/ss/android/downloadlib/h/l;

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Lcom/ss/android/downloadlib/h/l;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 71
    return-void

    .line 74
    :cond_6f
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-wide v4, v13, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v2

    .line 75
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 76
    const/4 v5, -0x1

    .line 78
    :try_start_7f
    const-string v0, "ttdownloader_type"

    const-string v6, "miui_silent_install"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v0, "ttdownloader_message"

    const-string v6, "miui_silent_install_failed: has not started service"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8d} :catch_8f

    .line 80
    const/4 v5, 0x5

    .line 82
    goto :goto_90

    .line 81
    :catch_8f
    move-exception v0

    .line 83
    :goto_90
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->g()Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7, v0, v5}, Lcom/ss/android/socialbase/appdownloader/c/h;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 85
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    const-string v5, "embeded_ad"

    const-string v6, "ah_result"

    invoke-virtual {v0, v5, v6, v4, v2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 88
    :cond_ac
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->r()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 89
    return-void

    .line 91
    :cond_b3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/ss/android/downloadlib/addownload/a;->d:J

    sub-long/2addr v4, v6

    .line 92
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->t()J

    move-result-wide v6

    .line 93
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->u()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-gez v0, :cond_d4

    .line 94
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->u()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 95
    add-long/2addr v6, v8

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/ss/android/downloadlib/addownload/a;->d:J

    .line 97
    goto :goto_da

    .line 98
    :cond_d4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/ss/android/downloadlib/addownload/a;->d:J

    .line 100
    :goto_da
    iget-object v0, v1, Lcom/ss/android/downloadlib/addownload/a;->c:Lcom/ss/android/downloadlib/h/l;

    invoke-virtual {v0, v3, v13}, Lcom/ss/android/downloadlib/h/l;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2, v6, v7}, Lcom/ss/android/downloadlib/h/l;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 101
    return-void
.end method
