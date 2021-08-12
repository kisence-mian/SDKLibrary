.class Lcom/ss/android/socialbase/downloader/network/b$a;
.super Landroid/os/Handler;
.source "DeviceBandwidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/network/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/network/b;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/network/b;Landroid/os/Looper;)V
    .registers 3

    .line 152
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/network/b$a;->a:Lcom/ss/android/socialbase/downloader/network/b;

    .line 153
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 154
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/network/b$a;->sendEmptyMessage(I)Z

    .line 171
    return-void
.end method

.method public b()V
    .registers 2

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/network/b$a;->removeMessages(I)V

    .line 175
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 158
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_14

    goto :goto_12

    .line 160
    :pswitch_6
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/network/b$a;->a:Lcom/ss/android/socialbase/downloader/network/b;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/network/b;->f()V

    .line 161
    const/4 p1, 0x1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/socialbase/downloader/network/b$a;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    nop

    .line 166
    :goto_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
