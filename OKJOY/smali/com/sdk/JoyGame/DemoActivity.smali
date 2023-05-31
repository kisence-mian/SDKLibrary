.class public Lcom/sdk/JoyGame/DemoActivity;
.super Landroid/app/Activity;
.source "DemoActivity.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field isSDKLoginSuccess:Z

.field private mAdListener:Lcom/JoyFramework/common/IOnAdListener;

.field temp:I

.field userCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const-string v0, "4"

    iput-object v0, p0, Lcom/sdk/JoyGame/DemoActivity;->appId:Ljava/lang/String;

    .line 34
    const-string v0, "39322c20708a4fcc1f11d740a380627e"

    iput-object v0, p0, Lcom/sdk/JoyGame/DemoActivity;->appKey:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/sdk/JoyGame/DemoActivity;->userCode:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/sdk/JoyGame/DemoActivity;->isSDKLoginSuccess:Z

    .line 331
    iput v1, p0, Lcom/sdk/JoyGame/DemoActivity;->temp:I

    .line 379
    new-instance v0, Lcom/sdk/JoyGame/DemoActivity$6;

    invoke-direct {v0, p0}, Lcom/sdk/JoyGame/DemoActivity$6;-><init>(Lcom/sdk/JoyGame/DemoActivity;)V

    iput-object v0, p0, Lcom/sdk/JoyGame/DemoActivity;->mAdListener:Lcom/JoyFramework/common/IOnAdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sdk/JoyGame/DemoActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/sdk/JoyGame/DemoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sdk/JoyGame/DemoActivity;->showToastWithMsg(Ljava/lang/String;)V

    return-void
.end method

.method private getExtraDataInfo(Ljava/lang/String;)Lcom/JoyFramework/common/ExtraDataInfo;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Lcom/JoyFramework/common/ExtraDataInfo;

    invoke-direct {v0}, Lcom/JoyFramework/common/ExtraDataInfo;-><init>()V

    .line 232
    .local v0, "extraDataInfo":Lcom/JoyFramework/common/ExtraDataInfo;
    invoke-virtual {v0, p1}, Lcom/JoyFramework/common/ExtraDataInfo;->setScene_Id(Ljava/lang/String;)V

    .line 233
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/ExtraDataInfo;->setProcessId(Ljava/lang/String;)V

    .line 234
    const-string v1, "123"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/ExtraDataInfo;->setRoleId(Ljava/lang/String;)V

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/ExtraDataInfo;->setRoleTime(Ljava/lang/String;)V

    .line 236
    const-string v1, "123"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/ExtraDataInfo;->setRoleName(Ljava/lang/String;)V

    .line 237
    const-string v1, "123"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/ExtraDataInfo;->setServerId(Ljava/lang/String;)V

    .line 238
    const-string v1, "123"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/ExtraDataInfo;->setServerName(Ljava/lang/String;)V

    .line 239
    const-string v1, "11"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/ExtraDataInfo;->setLevel(Ljava/lang/String;)V

    .line 240
    const-string v1, "12"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/ExtraDataInfo;->setBalance(Ljava/lang/String;)V

    .line 241
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/ExtraDataInfo;->setVip(Ljava/lang/String;)V

    .line 242
    const-string v1, "123"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/ExtraDataInfo;->setCurrency(Ljava/lang/String;)V

    .line 243
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/ExtraDataInfo;->setPower(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/sdk/JoyGame/DemoActivity;->userCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/ExtraDataInfo;->setUserCode(Ljava/lang/String;)V

    .line 245
    return-object v0
.end method

.method private getPaymentInfo(Ljava/lang/String;)Lcom/JoyFramework/common/PaymentInfo;
    .registers 6
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "billNo":Ljava/lang/String;
    new-instance v1, Lcom/JoyFramework/common/PaymentInfo;

    invoke-direct {v1}, Lcom/JoyFramework/common/PaymentInfo;-><init>()V

    .line 267
    .local v1, "payInfo":Lcom/JoyFramework/common/PaymentInfo;
    invoke-virtual {v1, v0}, Lcom/JoyFramework/common/PaymentInfo;->setBillNo(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1, p1}, Lcom/JoyFramework/common/PaymentInfo;->setProductId(Ljava/lang/String;)V

    .line 269
    const-string v2, "\u6269\u5c55\u4fe1\u606f"

    invoke-virtual {v1, v2}, Lcom/JoyFramework/common/PaymentInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 270
    const-string v2, "\u533a\u670d\u540d"

    invoke-virtual {v1, v2}, Lcom/JoyFramework/common/PaymentInfo;->setServerName(Ljava/lang/String;)V

    .line 271
    const-string v2, "456"

    invoke-virtual {v1, v2}, Lcom/JoyFramework/common/PaymentInfo;->setServerId(Ljava/lang/String;)V

    .line 272
    const-string v2, "\u89d2\u8272\u540d"

    invoke-virtual {v1, v2}, Lcom/JoyFramework/common/PaymentInfo;->setRoleName(Ljava/lang/String;)V

    .line 273
    const-string v2, "123"

    invoke-virtual {v1, v2}, Lcom/JoyFramework/common/PaymentInfo;->setRoleId(Ljava/lang/String;)V

    .line 274
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/JoyFramework/common/PaymentInfo;->setLevel(Ljava/lang/String;)V

    .line 275
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/JoyFramework/common/PaymentInfo;->setBalance(Ljava/lang/String;)V

    .line 276
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/JoyFramework/common/PaymentInfo;->setCurrency(Ljava/lang/String;)V

    .line 277
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/JoyFramework/common/PaymentInfo;->setVip(Ljava/lang/String;)V

    .line 278
    const-string v2, "\u65e0"

    invoke-virtual {v1, v2}, Lcom/JoyFramework/common/PaymentInfo;->setPartyName(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/sdk/JoyGame/DemoActivity;->userCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/JoyFramework/common/PaymentInfo;->setUserCode(Ljava/lang/String;)V

    .line 281
    return-object v1
.end method

.method private showToastWithMsg(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 464
    :goto_6
    return-void

    .line 463
    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6
.end method


# virtual methods
.method public createRole(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 250
    const-string v0, "createRole"

    invoke-direct {p0, v0}, Lcom/sdk/JoyGame/DemoActivity;->getExtraDataInfo(Ljava/lang/String;)Lcom/JoyFramework/common/ExtraDataInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/JoyFramework/common/JoyGame;->setExtraData(Landroid/app/Activity;Lcom/JoyFramework/common/ExtraDataInfo;)V

    .line 251
    return-void
.end method

.method public enterGame(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 255
    const-string v0, "enterServer"

    invoke-direct {p0, v0}, Lcom/sdk/JoyGame/DemoActivity;->getExtraDataInfo(Ljava/lang/String;)Lcom/JoyFramework/common/ExtraDataInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/JoyFramework/common/JoyGame;->setExtraData(Landroid/app/Activity;Lcom/JoyFramework/common/ExtraDataInfo;)V

    .line 256
    return-void
.end method

.method public exitGame(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 360
    new-instance v0, Lcom/sdk/JoyGame/DemoActivity$5;

    invoke-direct {v0, p0}, Lcom/sdk/JoyGame/DemoActivity$5;-><init>(Lcom/sdk/JoyGame/DemoActivity;)V

    invoke-static {p0, v0}, Lcom/JoyFramework/common/JoyGame;->exit(Landroid/app/Activity;Lcom/JoyFramework/common/ExitListener;)V

    .line 376
    return-void
.end method

.method public init(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdk/JoyGame/DemoActivity;->appKey:Ljava/lang/String;

    new-instance v2, Lcom/sdk/JoyGame/DemoActivity$3;

    invoke-direct {v2, p0}, Lcom/sdk/JoyGame/DemoActivity$3;-><init>(Lcom/sdk/JoyGame/DemoActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/JoyFramework/common/JoyGame;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/common/InitListener;)V

    .line 223
    return-void
.end method

.method public inspireClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "readyAtPlacementId":Z
    iget v1, p0, Lcom/sdk/JoyGame/DemoActivity;->temp:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_35

    .line 338
    const-string v1, "1584699684395ZCIK"

    invoke-static {p0, v1}, Lcom/JoyFramework/common/JoyGame;->isReadyAtPlacementId(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 339
    if-eqz v0, :cond_16

    .line 340
    const-string v1, "1584699684395ZCIK"

    sget-object v2, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-static {p0, v1, v2}, Lcom/JoyFramework/common/JoyGame;->playAd(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 342
    :cond_16
    const-string v1, "\u5e7f\u544a\u4f4d\u72b6\u6001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playViewAd: \u5e7f\u544a\u4f4d\uff1a1584699684395ZCIK ,\u662f\u5426\u51c6\u5907\u597d\uff1f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_2e
    iget v1, p0, Lcom/sdk/JoyGame/DemoActivity;->temp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sdk/JoyGame/DemoActivity;->temp:I

    .line 352
    return-void

    .line 344
    :cond_35
    const-string v1, "1584699715644GHMU"

    invoke-static {p0, v1}, Lcom/JoyFramework/common/JoyGame;->isReadyAtPlacementId(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 345
    if-eqz v0, :cond_44

    .line 346
    const-string v1, "1584699715644GHMU"

    sget-object v2, Lcom/JoyFramework/common/IOnAdListener$Ad_Type;->Ad_Type_Inspire:Lcom/JoyFramework/common/IOnAdListener$Ad_Type;

    invoke-static {p0, v1, v2}, Lcom/JoyFramework/common/JoyGame;->playAd(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    .line 348
    :cond_44
    const-string v1, "\u5e7f\u544a\u4f4d\u72b6\u6001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playViewAd: \u5e7f\u544a\u4f4d\uff1a1584699715644GHMU,\u662f\u5426\u51c6\u5907\u597d\uff1f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public levelUp(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 260
    const-string v0, "levelUp"

    invoke-direct {p0, v0}, Lcom/sdk/JoyGame/DemoActivity;->getExtraDataInfo(Ljava/lang/String;)Lcom/JoyFramework/common/ExtraDataInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/JoyFramework/common/JoyGame;->setExtraData(Landroid/app/Activity;Lcom/JoyFramework/common/ExtraDataInfo;)V

    .line 261
    return-void
.end method

.method public moreGame(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 355
    invoke-static {p0}, Lcom/JoyFramework/common/JoyGame;->showMoreGame(Landroid/app/Activity;)V

    .line 356
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 534
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 535
    invoke-static {p0, p1, p2, p3}, Lcom/JoyFramework/common/JoyGame;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 536
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sdk/JoyGame/DemoActivity;->requestWindowFeature(I)Z

    .line 54
    invoke-virtual {p0}, Lcom/sdk/JoyGame/DemoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 56
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/sdk/JoyGame/DemoActivity;->setContentView(I)V

    .line 59
    invoke-static {v1}, Lcom/JoyFramework/common/JoyGame;->setWelcome(Z)V

    .line 60
    invoke-static {p0}, Lcom/JoyFramework/common/JoyGame;->onCreate(Landroid/app/Activity;)V

    .line 62
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity;->mAdListener:Lcom/JoyFramework/common/IOnAdListener;

    invoke-static {p0, v0}, Lcom/JoyFramework/common/JoyGame;->initAd(Landroid/app/Activity;Lcom/JoyFramework/common/IOnAdListener;)V

    .line 65
    invoke-static {v1}, Lcom/JoyFramework/common/JoyGame;->closeChangeAccount(Z)V

    .line 66
    new-instance v0, Lcom/sdk/JoyGame/DemoActivity$1;

    invoke-direct {v0, p0}, Lcom/sdk/JoyGame/DemoActivity$1;-><init>(Lcom/sdk/JoyGame/DemoActivity;)V

    invoke-static {v0}, Lcom/JoyFramework/common/JoyGame;->setUserListener(Lcom/JoyFramework/common/UserApiListenerInfo;)V

    .line 102
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdk/JoyGame/DemoActivity;->appKey:Ljava/lang/String;

    new-instance v2, Lcom/sdk/JoyGame/DemoActivity$2;

    invoke-direct {v2, p0}, Lcom/sdk/JoyGame/DemoActivity$2;-><init>(Lcom/sdk/JoyGame/DemoActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/JoyFramework/common/JoyGame;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/common/InitListener;)V

    .line 167
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 522
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 523
    invoke-static {p0}, Lcom/JoyFramework/common/JoyGame;->onDestroy(Landroid/app/Activity;)V

    .line 524
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 468
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    .line 469
    new-instance v0, Lcom/sdk/JoyGame/DemoActivity$7;

    invoke-direct {v0, p0}, Lcom/sdk/JoyGame/DemoActivity$7;-><init>(Lcom/sdk/JoyGame/DemoActivity;)V

    invoke-static {p0, v0}, Lcom/JoyFramework/common/JoyGame;->exit(Landroid/app/Activity;Lcom/JoyFramework/common/ExitListener;)V

    .line 485
    const/4 v0, 0x1

    .line 487
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 528
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 529
    invoke-static {p1}, Lcom/JoyFramework/common/JoyGame;->onNewIntent(Landroid/content/Intent;)V

    .line 530
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 510
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 511
    invoke-static {p0}, Lcom/JoyFramework/common/JoyGame;->onPause(Landroid/app/Activity;)V

    .line 512
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 546
    invoke-static {p0, p1, p2, p3}, Lcom/JoyFramework/common/JoyGame;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 547
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 548
    return-void
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 498
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 499
    invoke-static {p0}, Lcom/JoyFramework/common/JoyGame;->onRestart(Landroid/app/Activity;)V

    .line 500
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 504
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 505
    invoke-static {p0}, Lcom/JoyFramework/common/JoyGame;->onResume(Landroid/app/Activity;)V

    .line 506
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 492
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 493
    invoke-static {p0}, Lcom/JoyFramework/common/JoyGame;->onStart(Landroid/app/Activity;)V

    .line 494
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 516
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 517
    invoke-static {p0}, Lcom/JoyFramework/common/JoyGame;->onStop(Landroid/app/Activity;)V

    .line 518
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 540
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 541
    invoke-static {p1}, Lcom/JoyFramework/common/JoyGame;->onWindowFocusChanged(Z)V

    .line 542
    return-void
.end method

.method public openTapTap(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 329
    invoke-static {p0}, Lcom/JoyFramework/common/JoyGame;->openTapTapForum(Landroid/app/Activity;)V

    .line 330
    return-void
.end method

.method public payWithOneFen(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 286
    const-string v0, "test_pay_001"

    invoke-direct {p0, v0}, Lcom/sdk/JoyGame/DemoActivity;->getPaymentInfo(Ljava/lang/String;)Lcom/JoyFramework/common/PaymentInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/JoyFramework/common/JoyGame;->payment(Landroid/app/Activity;Lcom/JoyFramework/common/PaymentInfo;)V

    .line 287
    return-void
.end method

.method public payWithOneYuan(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 291
    const-string v0, "test_pay_1"

    invoke-direct {p0, v0}, Lcom/sdk/JoyGame/DemoActivity;->getPaymentInfo(Ljava/lang/String;)Lcom/JoyFramework/common/PaymentInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/JoyFramework/common/JoyGame;->payment(Landroid/app/Activity;Lcom/JoyFramework/common/PaymentInfo;)V

    .line 292
    return-void
.end method

.method public publicAccount(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 325
    invoke-static {p0}, Lcom/JoyFramework/common/JoyGame;->wxPublicAccount(Landroid/app/Activity;)V

    .line 326
    return-void
.end method

.method public share(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 296
    new-instance v0, Lcom/sdk/JoyGame/DemoActivity$4;

    invoke-direct {v0, p0}, Lcom/sdk/JoyGame/DemoActivity$4;-><init>(Lcom/sdk/JoyGame/DemoActivity;)V

    invoke-static {p0, v0}, Lcom/JoyFramework/common/JoyGame;->share(Landroid/app/Activity;Lcom/JoyFramework/common/IShareCallback;)V

    .line 321
    return-void
.end method

.method public switchAccount(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 227
    invoke-static {p0}, Lcom/JoyFramework/common/JoyGame;->logout(Landroid/app/Activity;)V

    .line 228
    return-void
.end method
