.class public Lcom/ss/android/downloadlib/a/b;
.super Ljava/lang/Object;
.source "AdDelayTaskManager.java"

# interfaces
.implements Lcom/ss/android/downloadlib/e/h$a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/ss/android/downloadlib/a/b;


# instance fields
.field private c:Lcom/ss/android/downloadlib/e/h;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/ss/android/downloadlib/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/ss/android/downloadlib/e/h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/e/h;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/e/h$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/b;->c:Lcom/ss/android/downloadlib/e/h;

    .line 49
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/a/b;
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lcom/ss/android/downloadlib/a/b;->b:Lcom/ss/android/downloadlib/a/b;

    if-nez v0, :cond_13

    .line 39
    const-class v1, Lcom/ss/android/downloadlib/a/b;

    monitor-enter v1

    .line 40
    :try_start_7
    sget-object v0, Lcom/ss/android/downloadlib/a/b;->b:Lcom/ss/android/downloadlib/a/b;

    if-nez v0, :cond_12

    .line 41
    new-instance v0, Lcom/ss/android/downloadlib/a/b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/b;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/b;->b:Lcom/ss/android/downloadlib/a/b;

    .line 43
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 45
    :cond_13
    sget-object v0, Lcom/ss/android/downloadlib/a/b;->b:Lcom/ss/android/downloadlib/a/b;

    return-object v0

    .line 43
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Lcom/ss/android/downloadlib/a/b/a;I)V
    .registers 9

    .prologue
    .line 102
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->k()Lcom/ss/android/a/a/a/a;

    move-result-object v0

    if-nez v0, :cond_7

    .line 144
    :cond_6
    :goto_6
    return-void

    .line 105
    :cond_7
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->k()Lcom/ss/android/a/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    :cond_17
    if-eqz p1, :cond_6

    .line 111
    const/4 v0, 0x2

    if-ne v0, p2, :cond_63

    .line 112
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/downloadlib/a/b/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadlib/a/b/c;->d(J)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v1

    .line 113
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 114
    const/4 v0, -0x1

    .line 116
    :try_start_2c
    const-string v3, "type"

    const-string v4, "miui_silent_install"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/ss/android/downloadlib/a/b/a;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ss/android/downloadlib/e/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 118
    const-string v3, "message"

    const-string v4, "miui_silent_install_succeed"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_46} :catch_c9

    .line 119
    const/4 v0, 0x4

    .line 126
    :goto_47
    new-instance v3, Lcom/ss/android/socialbase/downloader/e/a;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->g()Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5, v3, v0}, Lcom/ss/android/socialbase/appdownloader/c/h;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 128
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v3, "embeded_ad"

    const-string v4, "anti_hijack_result"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 130
    :cond_63
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/ss/android/downloadlib/a/b/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/e/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 131
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "delayinstall_installed"

    iget-wide v2, p1, Lcom/ss/android/downloadlib/a/b/a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;J)V

    goto :goto_6

    .line 121
    :cond_7b
    :try_start_7b
    const-string v3, "message"

    const-string v4, "miui_silent_install_failed: has started service"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_82} :catch_c9

    .line 122
    const/4 v0, 0x5

    goto :goto_47

    .line 134
    :cond_84
    iget-object v0, p1, Lcom/ss/android/downloadlib/a/b/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 135
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "delayinstall_file_lost"

    iget-wide v2, p1, Lcom/ss/android/downloadlib/a/b/a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 138
    :cond_99
    invoke-static {}, Lcom/ss/android/downloadlib/a/a/a;->a()Lcom/ss/android/downloadlib/a/a/a;

    move-result-object v0

    iget-object v1, p1, Lcom/ss/android/downloadlib/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 139
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "delayinstall_conflict_with_back_dialog"

    iget-wide v2, p1, Lcom/ss/android/downloadlib/a/b/a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 142
    :cond_b2
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "delayinstall_install_start"

    iget-wide v2, p1, Lcom/ss/android/downloadlib/a/b/a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;J)V

    .line 143
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p1, Lcom/ss/android/downloadlib/a/b/a;->a:J

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;I)Z

    goto/16 :goto_6

    .line 124
    :catch_c9
    move-exception v3

    goto/16 :goto_47
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 158
    :goto_5
    return-void

    .line 152
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/downloadlib/a/b/a;

    .line 153
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/ss/android/downloadlib/a/b;->a(Lcom/ss/android/downloadlib/a/b/a;I)V

    goto :goto_5

    .line 150
    :pswitch_data_10
    .packed-switch 0xc8
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p1    # Lcom/ss/android/socialbase/downloader/g/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    new-instance v1, Lcom/ss/android/downloadlib/a/b/a;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    int-to-long v2, v0

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/ss/android/downloadlib/a/b/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    .line 60
    const-string v2, "back_miui_silent_install"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_a3

    .line 61
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->j()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->k()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 62
    :cond_32
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.miui.securitycore"

    const-string v4, "com.miui.enterprise.service.EntInstallService"

    invoke-static {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/m/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 63
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->bg()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_silent_install_succeed"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 65
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/b;->c:Lcom/ss/android/downloadlib/e/h;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3, v1}, Lcom/ss/android/downloadlib/e/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 66
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 67
    const-string v2, "check_silent_install_interval"

    const v3, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 68
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/b;->c:Lcom/ss/android/downloadlib/e/h;

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Lcom/ss/android/downloadlib/e/h;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 99
    :cond_67
    :goto_67
    return-void

    .line 72
    :cond_68
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    iget-wide v2, v1, Lcom/ss/android/downloadlib/a/b/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadlib/a/b/c;->d(J)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v2

    .line 73
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 74
    const/4 v0, -0x1

    .line 76
    :try_start_78
    const-string v4, "type"

    const-string v5, "miui_silent_install"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v4, "message"

    const-string v5, "miui_silent_install_failed: has not started service"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_86} :catch_e0

    .line 78
    const/4 v0, 0x5

    .line 81
    :goto_87
    new-instance v4, Lcom/ss/android/socialbase/downloader/e/a;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->g()Lcom/ss/android/socialbase/appdownloader/c/h;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4, v0}, Lcom/ss/android/socialbase/appdownloader/c/h;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 83
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v4, "embeded_ad"

    const-string v5, "anti_hijack_result"

    invoke-virtual {v0, v4, v5, v3, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 86
    :cond_a3
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->q()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ss/android/downloadlib/a/b;->d:J

    sub-long v4, v2, v4

    .line 90
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->t()J

    move-result-wide v2

    .line 91
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->u()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_d9

    .line 92
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->u()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 93
    add-long/2addr v2, v4

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ss/android/downloadlib/a/b;->d:J

    .line 98
    :goto_cb
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b;->c:Lcom/ss/android/downloadlib/e/h;

    iget-object v4, p0, Lcom/ss/android/downloadlib/a/b;->c:Lcom/ss/android/downloadlib/e/h;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5, v1}, Lcom/ss/android/downloadlib/e/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/e/h;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_67

    .line 96
    :cond_d9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ss/android/downloadlib/a/b;->d:J

    goto :goto_cb

    .line 79
    :catch_e0
    move-exception v4

    goto :goto_87
.end method
