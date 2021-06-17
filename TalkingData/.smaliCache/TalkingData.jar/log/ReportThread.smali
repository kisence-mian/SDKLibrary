.class Llog/ReportThread;
.super Ljava/lang/Object;
.source "TalkingData.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private orderID:Ljava/lang/String;

.field private t:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderID"    # Ljava/lang/String;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Llog/ReportThread;->orderID:Ljava/lang/String;

    .line 244
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 248
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportThread begin report "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llog/ReportThread;->orderID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 250
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 251
    iget-object v0, p0, Llog/ReportThread;->orderID:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->onChargeSuccess(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportThread onChargeSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llog/ReportThread;->orderID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 258
    goto :goto_56

    .line 255
    :catch_3b
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportThread Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LsdkInterface/SdkInterface;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 259
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_56
    return-void
.end method

.method public start()V
    .registers 3

    .line 262
    const-string v0, "---------TalkingData LogPay ReportThread Start111"

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Llog/ReportThread;->t:Ljava/lang/Thread;

    if-nez v0, :cond_32

    .line 264
    const-string v0, "---------TalkingData LogPay ReportThread Start222"

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ReportThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Llog/ReportThread;->t:Ljava/lang/Thread;

    .line 266
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportThread start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llog/ReportThread;->orderID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsdkInterface/SdkInterface;->SendLog(Ljava/lang/String;)V

    .line 269
    :cond_32
    return-void
.end method
