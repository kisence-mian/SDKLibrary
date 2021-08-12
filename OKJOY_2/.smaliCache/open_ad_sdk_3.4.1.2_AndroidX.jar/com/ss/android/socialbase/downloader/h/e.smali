.class public final Lcom/ss/android/socialbase/downloader/h/e;
.super Ljava/lang/Object;
.source "DownloadWatchDog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/h/e$b;,
        Lcom/ss/android/socialbase/downloader/h/e$a;
    }
.end annotation


# instance fields
.field private volatile a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/h/e$a;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/h/e;->a:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method public static a()Landroid/os/Looper;
    .registers 1

    .line 28
    invoke-static {}, Lcom/ss/android/socialbase/downloader/h/e$a;->a()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/h/e$b;J)V
    .registers 7

    .line 40
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/e;->a:Landroid/os/Handler;

    .line 41
    if-nez v0, :cond_5

    .line 43
    return-void

    .line 45
    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 46
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 47
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 49
    return-void
.end method

.method public b()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/h/e;->a:Landroid/os/Handler;

    .line 61
    if-nez v0, :cond_5

    .line 62
    return-void

    .line 64
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/h/e;->a:Landroid/os/Handler;

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1d

    .line 73
    :pswitch_6
    :try_start_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ss/android/socialbase/downloader/h/e$b;

    .line 74
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/h/e$b;->a()J

    move-result-wide v0

    .line 75
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    .line 76
    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/socialbase/downloader/h/e;->a(Lcom/ss/android/socialbase/downloader/h/e$b;J)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    .line 80
    :cond_17
    goto :goto_1d

    .line 78
    :catchall_18
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    nop

    .line 86
    :goto_1d
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
