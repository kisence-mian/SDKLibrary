.class public Lcom/ss/android/downloadlib/a/d;
.super Ljava/lang/Object;
.source "AdQuickAppManager.java"

# interfaces
.implements Lcom/ss/android/downloadlib/e/h$a;


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile b:Lcom/ss/android/downloadlib/a/d;


# instance fields
.field private c:Lcom/ss/android/downloadlib/e/h;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/ss/android/downloadlib/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    new-instance v0, Lcom/ss/android/downloadlib/e/h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/e/h;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/e/h$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/d;->c:Lcom/ss/android/downloadlib/e/h;

    .line 48
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/a/d;
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/ss/android/downloadlib/a/d;->b:Lcom/ss/android/downloadlib/a/d;

    if-nez v0, :cond_13

    .line 52
    const-class v1, Lcom/ss/android/downloadlib/a/d;

    monitor-enter v1

    .line 53
    :try_start_7
    sget-object v0, Lcom/ss/android/downloadlib/a/d;->b:Lcom/ss/android/downloadlib/a/d;

    if-nez v0, :cond_12

    .line 54
    new-instance v0, Lcom/ss/android/downloadlib/a/d;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/d;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/d;->b:Lcom/ss/android/downloadlib/a/d;

    .line 56
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 59
    :cond_13
    sget-object v0, Lcom/ss/android/downloadlib/a/d;->b:Lcom/ss/android/downloadlib/a/d;

    return-object v0

    .line 56
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Lcom/ss/android/a/a/b/c;)Z
    .registers 2

    .prologue
    .line 177
    if-eqz p0, :cond_18

    .line 178
    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->y()Lcom/ss/android/a/a/c/f;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 179
    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->y()Lcom/ss/android/a/a/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/a/a/c/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 180
    const/4 v0, 0x1

    .line 183
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3

    .prologue
    .line 192
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_11

    .line 193
    :cond_f
    const/4 v0, 0x1

    .line 196
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public a(ILcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V
    .registers 8

    .prologue
    .line 110
    sget-object v0, Lcom/ss/android/downloadlib/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendQuickAppMsg msgWhat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 111
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/d;->c:Lcom/ss/android/downloadlib/e/h;

    if-nez v0, :cond_1e

    .line 119
    :goto_1d
    return-void

    .line 115
    :cond_1e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 116
    iput p1, v0, Landroid/os/Message;->what:I

    .line 117
    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/d;->c:Lcom/ss/android/downloadlib/e/h;

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a/d;->b()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/ss/android/downloadlib/e/h;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1d
.end method

.method public a(Landroid/os/Message;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 65
    if-nez p1, :cond_5

    .line 107
    :cond_4
    :goto_4
    return-void

    .line 69
    :cond_5
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->k()Lcom/ss/android/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 70
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->k()Lcom/ss/android/a/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/a/a;->a()Z

    move-result v0

    move v1, v0

    .line 73
    :goto_14
    const-wide/16 v4, 0x0

    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_24

    .line 75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 78
    :cond_24
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_76

    :pswitch_29
    goto :goto_4

    .line 80
    :pswitch_2a
    if-eqz v1, :cond_4

    .line 83
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v5, v7, v1}, Lcom/ss/android/downloadlib/d/a;->a(JZI)V

    goto :goto_4

    .line 86
    :pswitch_35
    if-eqz v1, :cond_4

    .line 89
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v7, v7}, Lcom/ss/android/downloadlib/d/a;->a(JZI)V

    goto :goto_4

    .line 92
    :pswitch_3f
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 93
    iget-object v3, p0, Lcom/ss/android/downloadlib/a/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    if-eqz v1, :cond_65

    .line 96
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v7}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    .line 97
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v7, v7}, Lcom/ss/android/downloadlib/d/a;->a(JZI)V

    goto :goto_4

    .line 99
    :cond_65
    if-eqz v0, :cond_6c

    .line 100
    iget-object v1, p0, Lcom/ss/android/downloadlib/a/d;->c:Lcom/ss/android/downloadlib/e/h;

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/e/h;->post(Ljava/lang/Runnable;)Z

    .line 102
    :cond_6c
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v2, v7}, Lcom/ss/android/downloadlib/d/a;->a(JZI)V

    goto :goto_4

    :cond_74
    move v1, v2

    goto :goto_14

    .line 78
    :pswitch_data_76
    .packed-switch 0x4
        :pswitch_2a
        :pswitch_35
        :pswitch_29
        :pswitch_3f
    .end packed-switch
.end method

.method public b()J
    .registers 5

    .prologue
    .line 167
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    .line 168
    const-string v1, "quick_app_check_internal"

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
