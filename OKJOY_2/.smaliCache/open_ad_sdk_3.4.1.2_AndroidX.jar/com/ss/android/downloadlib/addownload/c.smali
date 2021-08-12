.class public Lcom/ss/android/downloadlib/addownload/c;
.super Ljava/lang/Object;
.source "AdQuickAppManager.java"

# interfaces
.implements Lcom/ss/android/downloadlib/h/l$a;


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile b:Lcom/ss/android/downloadlib/addownload/c;


# instance fields
.field private c:Lcom/ss/android/downloadlib/h/l;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/ss/android/downloadlib/addownload/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/addownload/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance v0, Lcom/ss/android/downloadlib/h/l;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/h/l;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/h/l$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/c;->c:Lcom/ss/android/downloadlib/h/l;

    .line 46
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/c;
    .registers 2

    .line 49
    sget-object v0, Lcom/ss/android/downloadlib/addownload/c;->b:Lcom/ss/android/downloadlib/addownload/c;

    if-nez v0, :cond_17

    .line 50
    const-class v0, Lcom/ss/android/downloadlib/addownload/c;

    monitor-enter v0

    .line 51
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/addownload/c;->b:Lcom/ss/android/downloadlib/addownload/c;

    if-nez v1, :cond_12

    .line 52
    new-instance v1, Lcom/ss/android/downloadlib/addownload/c;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/c;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/c;->b:Lcom/ss/android/downloadlib/addownload/c;

    .line 54
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 57
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/addownload/c;->b:Lcom/ss/android/downloadlib/addownload/c;

    return-object v0
.end method

.method public static a(Lcom/ss/android/a/a/b/c;)Z
    .registers 2

    .line 179
    if-eqz p0, :cond_18

    .line 180
    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->B()Lcom/ss/android/a/a/c/f;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 181
    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->B()Lcom/ss/android/a/a/c/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/a/a/c/f;->a()Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_18

    .line 182
    const/4 p0, 0x1

    return p0

    .line 185
    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 2

    .line 194
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result p0

    const/4 v0, -0x4

    if-ne p0, v0, :cond_10

    goto :goto_12

    .line 198
    :cond_10
    const/4 p0, 0x0

    return p0

    .line 195
    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(ILcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V
    .registers 6

    .line 112
    sget-object p3, Lcom/ss/android/downloadlib/addownload/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendQuickAppMsg msgWhat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 113
    iget-object p3, p0, Lcom/ss/android/downloadlib/addownload/c;->c:Lcom/ss/android/downloadlib/h/l;

    if-nez p3, :cond_1e

    .line 114
    return-void

    .line 117
    :cond_1e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p3

    .line 118
    iput p1, p3, Landroid/os/Message;->what:I

    .line 119
    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/c;->c:Lcom/ss/android/downloadlib/h/l;

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/c;->b()J

    move-result-wide v0

    invoke-virtual {p1, p3, v0, v1}, Lcom/ss/android/downloadlib/h/l;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 9

    .line 63
    if-nez p1, :cond_3

    .line 64
    return-void

    .line 66
    :cond_3
    nop

    .line 67
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->k()Lcom/ss/android/a/a/a/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 68
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->k()Lcom/ss/android/a/a/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/a/b;->a()Z

    move-result v0

    goto :goto_15

    .line 67
    :cond_14
    move v0, v1

    .line 71
    :goto_15
    const-wide/16 v2, 0x0

    .line 72
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_25

    .line 73
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 75
    :cond_25
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/a/a/b/c;

    move-result-object v4

    .line 76
    instance-of v5, v4, Lcom/ss/android/downloadad/a/a/c;

    if-eqz v5, :cond_37

    .line 77
    check-cast v4, Lcom/ss/android/downloadad/a/a/c;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/ss/android/downloadad/a/a/c;->a(I)Lcom/ss/android/downloadad/a/a/c;

    .line 80
    :cond_37
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_8c

    :pswitch_3d
    goto :goto_8b

    .line 94
    :pswitch_3e
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 95
    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    if-eqz v0, :cond_65

    .line 97
    nop

    .line 98
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v4}, Lcom/ss/android/downloadlib/e/a;->a(JI)V

    .line 99
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v4, v4}, Lcom/ss/android/downloadlib/e/a;->a(JZI)V

    goto :goto_8b

    .line 101
    :cond_65
    if-eqz p1, :cond_6c

    .line 102
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/c;->c:Lcom/ss/android/downloadlib/h/l;

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/h/l;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_6c
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v1, v4}, Lcom/ss/android/downloadlib/e/a;->a(JZI)V

    goto :goto_8b

    .line 88
    :pswitch_74
    if-nez v0, :cond_77

    .line 89
    return-void

    .line 91
    :cond_77
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v4, v4}, Lcom/ss/android/downloadlib/e/a;->a(JZI)V

    .line 92
    goto :goto_8b

    .line 82
    :pswitch_7f
    if-nez v0, :cond_82

    .line 83
    return-void

    .line 85
    :cond_82
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/ss/android/downloadlib/e/a;->a(JZI)V

    .line 86
    nop

    .line 109
    :goto_8b
    return-void

    :pswitch_data_8c
    .packed-switch 0x4
        :pswitch_7f
        :pswitch_74
        :pswitch_3d
        :pswitch_3e
    .end packed-switch
.end method

.method public b()J
    .registers 5

    .line 169
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    const-string v1, "quick_app_check_internal"

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
