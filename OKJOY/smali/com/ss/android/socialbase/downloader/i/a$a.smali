.class Lcom/ss/android/socialbase/downloader/i/a$a;
.super Landroid/os/Handler;
.source "DeviceBandwidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/i/a;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/i/a;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/a$a;->a:Lcom/ss/android/socialbase/downloader/i/a;

    .line 152
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 153
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/i/a$a;->sendEmptyMessage(I)Z

    .line 170
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/i/a$a;->removeMessages(I)V

    .line 174
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 165
    :goto_5
    return-void

    .line 159
    :pswitch_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/a$a;->a:Lcom/ss/android/socialbase/downloader/i/a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/a;->e()V

    .line 160
    const/4 v0, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/i/a$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 157
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
