.class final Lcom/mintegral/msdk/mtgdownload/c$b;
.super Landroid/os/Handler;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgdownload/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgdownload/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgdownload/c;)V
    .registers 2

    .prologue
    .line 392
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/c$b;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    .line 397
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IncomingHandler(msg.what:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg.arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg.arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg.replyTo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c6

    .line 453
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 458
    :goto_42
    return-void

    .line 401
    :pswitch_43
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 402
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IncomingHandler(msg.getData():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string v1, "mComponentName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1329
    const-string v2, "mTitle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1330
    const-string v3, "mUrl"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1331
    new-instance v4, Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-direct {v4, v1, v2, v3}, Lcom/mintegral/msdk/mtgdownload/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v1, "mMd5"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->e:Ljava/lang/String;

    .line 1333
    const-string v1, "mTargetMd5"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->f:Ljava/lang/String;

    .line 1334
    const-string v1, "mReqClz"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->a:Ljava/lang/String;

    .line 1335
    const-string v1, "succUrls"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->g:[Ljava/lang/String;

    .line 1336
    const-string v1, "faiUrls"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->i:[Ljava/lang/String;

    .line 1337
    const-string v1, "startUrls"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->j:[Ljava/lang/String;

    .line 1338
    const-string v1, "pauseUrls"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->k:[Ljava/lang/String;

    .line 1339
    const-string v1, "cancelUrls"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->l:[Ljava/lang/String;

    .line 1340
    const-string v1, "carryonUrls"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->h:[Ljava/lang/String;

    .line 1341
    const-string v1, "rich_notification"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->m:Z

    .line 1342
    const-string v1, "mSilent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->n:Z

    .line 1343
    const-string v1, "mWifiOnly"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->o:Z

    .line 404
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c$b;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/c;->a(Lcom/mintegral/msdk/mtgdownload/c;)Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v0

    sget-boolean v1, Lcom/mintegral/msdk/mtgdownload/c;->b:Z

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v4, v1, v2}, Lcom/mintegral/msdk/mtgdownload/e;->a(Lcom/mintegral/msdk/mtgdownload/b$a;ZLandroid/os/Messenger;)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 405
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already in downloading list. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c$b;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/c;->a(Lcom/mintegral/msdk/mtgdownload/c;)Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mintegral/msdk/mtgdownload/e;->b(Lcom/mintegral/msdk/mtgdownload/b$a;)I

    move-result v1

    .line 407
    const/4 v0, -0x1

    if-eq v1, v0, :cond_140

    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->a:Lcom/mintegral/msdk/mtgdownload/k;

    if-nez v0, :cond_140

    .line 408
    const-string v0, "continue"

    invoke-static {v1, v0}, Lcom/mintegral/msdk/mtgdownload/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/c$b;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v2

    const-class v3, Lcom/mintegral/msdk/mtgdownload/c;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    const-string v2, "com.mintegral.msdk.broadcast.download.msg"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c$b;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/c;->a(Lcom/mintegral/msdk/mtgdownload/c;)Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/c$b;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0, v2, v1}, Lcom/mintegral/msdk/mtgdownload/e;->a(Lcom/mintegral/msdk/mtgdownload/c;Landroid/content/Intent;)Z
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_138} :catch_13a

    goto/16 :goto_42

    .line 456
    :catch_13a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_42

    .line 413
    :cond_140
    :try_start_140
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c$b;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v0

    sget-object v1, Lcom/mintegral/msdk/mtgdownload/f;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 414
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 415
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 416
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 417
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_15d} :catch_13a

    .line 419
    :try_start_15d
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_162
    .catch Landroid/os/RemoteException; {:try_start_15d .. :try_end_162} :catch_164
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_162} :catch_13a

    goto/16 :goto_42

    .line 421
    :catch_164
    move-exception v0

    :try_start_165
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_42

    .line 426
    :cond_16a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c$b;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 427
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 429
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 430
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 431
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_18a} :catch_13a

    .line 433
    :try_start_18a
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_18f
    .catch Landroid/os/RemoteException; {:try_start_18a .. :try_end_18f} :catch_196
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_18f} :catch_13a

    .line 437
    :goto_18f
    :try_start_18f
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c$b;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v0, v4}, Lcom/mintegral/msdk/mtgdownload/c;->a(Lcom/mintegral/msdk/mtgdownload/c;Lcom/mintegral/msdk/mtgdownload/b$a;)V

    goto/16 :goto_42

    .line 435
    :catch_196
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18f

    .line 439
    :cond_19b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c$b;->a:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/c;->b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;

    move-result-object v0

    sget-object v1, Lcom/mintegral/msdk/mtgdownload/f;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 440
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 441
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 442
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 443
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1b8} :catch_13a

    .line 445
    :try_start_1b8
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1bd
    .catch Landroid/os/RemoteException; {:try_start_1b8 .. :try_end_1bd} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1bd} :catch_13a

    goto/16 :goto_42

    .line 447
    :catch_1bf
    move-exception v0

    :try_start_1c0
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1c3} :catch_13a

    goto/16 :goto_42

    .line 399
    nop

    :pswitch_data_1c6
    .packed-switch 0x4
        :pswitch_43
    .end packed-switch
.end method
