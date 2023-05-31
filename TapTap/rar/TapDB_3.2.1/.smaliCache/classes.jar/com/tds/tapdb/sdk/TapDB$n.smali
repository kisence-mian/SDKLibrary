.class final Lcom/tds/tapdb/sdk/TapDB$n;
.super Landroid/os/ResultReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/sdk/TapDB;->setTapTapDID(Landroid/content/Context;Ljava/lang/String;Lcom/tds/tapdb/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tds/tapdb/Callback;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/tds/tapdb/Callback;)V
    .registers 3

    iput-object p2, p0, Lcom/tds/tapdb/sdk/TapDB$n;->a:Lcom/tds/tapdb/Callback;

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    const-string p1, "TapTapDIDIntentService"

    const-string v0, "onReceiveResult"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "unified_id_result_param"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$n;->a:Lcom/tds/tapdb/Callback;

    if-eqz p1, :cond_50

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$n;->a:Lcom/tds/tapdb/Callback;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tds/tapdb/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_50

    :cond_44
    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$n;->a:Lcom/tds/tapdb/Callback;

    new-instance p2, Ljava/lang/Throwable;

    const-string v0, "failed to set did"

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/tds/tapdb/Callback;->onFail(Ljava/lang/Throwable;)V

    :cond_50
    :goto_50
    return-void
.end method
