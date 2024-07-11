.class final Lcom/umeng/commonsdk/framework/UMWorkDispatch$1;
.super Landroid/os/Handler;
.source "UMWorkDispatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/framework/UMWorkDispatch;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 203
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_18

    goto :goto_17

    .line 225
    :sswitch_6
    # invokes: Lcom/umeng/commonsdk/framework/UMWorkDispatch;->handleQuit()V
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->access$200()V

    .line 227
    goto :goto_17

    .line 221
    :sswitch_a
    # invokes: Lcom/umeng/commonsdk/framework/UMWorkDispatch;->handleEvent(Landroid/os/Message;)V
    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->access$000(Landroid/os/Message;)V

    .line 223
    goto :goto_17

    .line 217
    :sswitch_e
    # invokes: Lcom/umeng/commonsdk/framework/UMWorkDispatch;->delayProcess()V
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->access$100()V

    .line 219
    goto :goto_17

    .line 211
    :sswitch_12
    goto :goto_17

    .line 213
    :sswitch_13
    # invokes: Lcom/umeng/commonsdk/framework/UMWorkDispatch;->handleEvent(Landroid/os/Message;)V
    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->access$000(Landroid/os/Message;)V

    .line 215
    nop

    .line 231
    :goto_17
    return-void

    :sswitch_data_18
    .sparse-switch
        0x300 -> :sswitch_13
        0x301 -> :sswitch_12
        0x302 -> :sswitch_e
        0x303 -> :sswitch_a
        0x310 -> :sswitch_6
    .end sparse-switch
.end method
