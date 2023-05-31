.class public Lcom/JoyFramework/common/JoyGame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static initListener:Lcom/JoyFramework/common/InitListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeChangeAccount(Z)V
    .registers 2

    .prologue
    .line 298
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->c(Z)V

    .line 299
    return-void
.end method

.method public static connectService(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 477
    if-nez p0, :cond_3

    .line 481
    :goto_2
    return-void

    .line 480
    :cond_3
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->m(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method public static exit(Landroid/app/Activity;Lcom/JoyFramework/common/ExitListener;)V
    .registers 3

    .prologue
    .line 125
    if-eqz p0, :cond_b

    .line 126
    new-instance v0, Lcom/JoyFramework/common/f;

    invoke-direct {v0, p0, p1}, Lcom/JoyFramework/common/f;-><init>(Landroid/app/Activity;Lcom/JoyFramework/common/ExitListener;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    :goto_a
    return-void

    .line 133
    :cond_b
    const-string v0, "JoyGame --> exit\u9000\u51fa\u63a5\u53e3\u5fc5\u987b\u4f20\u5165 Activity"

    invoke-static {v0}, Lcom/JoyFramework/common/JoyGame;->toastOrThrowException(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a
.end method

.method public static fetchRealNameStatus(Landroid/app/Activity;Lcom/JoyFramework/common/IRealNameCallbackAdapter;)V
    .registers 4

    .prologue
    .line 512
    if-nez p0, :cond_a

    .line 513
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fetchRealNameStatus \u63a5\u53e3\u8bf7\u4f20\u5165Activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_a
    if-nez p1, :cond_d

    .line 520
    :goto_c
    return-void

    .line 518
    :cond_d
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/JoyFramework/c/e;->b(Landroid/app/Activity;Lcom/JoyFramework/common/IRealNameCallbackAdapter;)V

    goto :goto_c
.end method

.method public static getAgent(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    if-eqz p0, :cond_b

    .line 230
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "JoyGame --> getAgent\u83b7\u53d6\u5e94\u7528\u6e20\u9053\u53f7\u5fc5\u987b\u4f20\u5165 Activity"

    invoke-static {v0}, Lcom/JoyFramework/common/JoyGame;->toastOrThrowException(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static getFuseAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 244
    if-eqz p0, :cond_b

    .line 245
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/JoyFramework/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "JoyGame --> getFuseAgent\u83b7\u53d6\u5e94\u7528\u878d\u5408\u6e20\u9053\u53f7\u5fc5\u987b\u4f20\u5165 Context"

    invoke-static {v0}, Lcom/JoyFramework/common/JoyGame;->toastOrThrowException(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static getLoginState()Z
    .registers 1

    .prologue
    .line 268
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/c/e;->d()Z

    move-result v0

    return v0
.end method

.method public static getUserCode(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 564
    if-nez p0, :cond_a

    .line 565
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getUserCode \u63a5\u53e3\u8bf7\u4f20\u5165Activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_a
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->n(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 259
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/c/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/common/InitListener;)V
    .registers 6

    .prologue
    .line 30
    if-nez p0, :cond_a

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u521d\u59cb\u5316\u8bf7\u4f20\u5165Activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_a
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->b(Landroid/app/Activity;)V

    .line 34
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/JoyFramework/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/common/InitListener;)V

    .line 35
    sput-object p3, Lcom/JoyFramework/common/JoyGame;->initListener:Lcom/JoyFramework/common/InitListener;

    .line 36
    return-void
.end method

.method public static initAd(Landroid/app/Activity;Lcom/JoyFramework/common/IOnAdListener;)V
    .registers 4

    .prologue
    .line 331
    if-nez p0, :cond_a

    .line 332
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u5e7f\u544a\u521d\u59cb\u5316\u4f20\u5165\u7684Activity\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_a
    if-nez p1, :cond_12

    .line 335
    const-string v0, "\u5e7f\u544a\u521d\u59cb\u5316\u8bf7\u4f20\u5165\u76d1\u542c\u63a5\u53e3"

    invoke-static {v0}, Lcom/JoyFramework/common/JoyGame;->toastOrThrowException(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    :goto_11
    return-void

    .line 339
    :cond_12
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;Lcom/JoyFramework/common/IOnAdListener;)V

    goto :goto_11
.end method

.method public static isReadyAtPlacementId(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 372
    if-nez p0, :cond_b

    .line 373
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "isReadyAtPlacementId\u4f20\u5165\u7684Activity\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 376
    const-string v1, "\u8bf7\u4f20\u5165\u5e7f\u544a\u4f4dID"

    new-array v2, v0, [Z

    invoke-static {p0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 379
    :goto_18
    return v0

    :cond_19
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_18
.end method

.method public static isReal(Landroid/app/Activity;Lcom/JoyFramework/common/IRealNameCallback;)V
    .registers 3

    .prologue
    .line 491
    if-nez p0, :cond_3

    .line 498
    :cond_2
    :goto_2
    return-void

    .line 494
    :cond_3
    if-eqz p1, :cond_2

    .line 497
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;Lcom/JoyFramework/common/IRealNameCallback;)V

    goto :goto_2
.end method

.method public static login(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V
    .registers 4

    .prologue
    .line 46
    sget-boolean v0, Lcom/JoyFramework/a/a;->k:Z

    if-nez v0, :cond_11

    .line 47
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/common/a;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/common/a;-><init>(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    invoke-virtual {v0, v1}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/common/InitListener;)V

    .line 75
    :goto_10
    return-void

    .line 63
    :cond_11
    if-eqz p0, :cond_1c

    .line 64
    new-instance v0, Lcom/JoyFramework/common/c;

    invoke-direct {v0, p0, p1}, Lcom/JoyFramework/common/c;-><init>(Landroid/app/Activity;Lcom/JoyFramework/common/LoginListener;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_10

    .line 71
    :cond_1c
    const-string v0, "JoyGame --> login \u767b\u5f55\u8d26\u53f7\u63a5\u53e3\u5fc5\u987b\u4f20\u5165 Activity"

    invoke-static {v0}, Lcom/JoyFramework/common/JoyGame;->toastOrThrowException(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_10
.end method

.method public static logout(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 83
    if-eqz p0, :cond_b

    .line 84
    new-instance v0, Lcom/JoyFramework/common/d;

    invoke-direct {v0}, Lcom/JoyFramework/common/d;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 94
    :goto_a
    return-void

    .line 91
    :cond_b
    const-string v0, "JoyGame --> logout\u5207\u6362\u8d26\u53f7\u63a5\u53e3\u5fc5\u987b\u4f20\u5165 Activity"

    invoke-static {v0}, Lcom/JoyFramework/common/JoyGame;->toastOrThrowException(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 208
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 210
    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 149
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->d(Landroid/app/Activity;)V

    .line 150
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 161
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->g(Landroid/app/Activity;)V

    .line 162
    return-void
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 177
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->a(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 169
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->i(Landroid/app/Activity;)V

    .line 170
    return-void
.end method

.method public static onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 5

    .prologue
    .line 321
    if-nez p0, :cond_3

    .line 323
    :goto_2
    return-void

    .line 322
    :cond_3
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    goto :goto_2
.end method

.method public static onRestart(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 173
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->j(Landroid/app/Activity;)V

    .line 174
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 165
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->h(Landroid/app/Activity;)V

    .line 166
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 153
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->e(Landroid/app/Activity;)V

    .line 154
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 157
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->f(Landroid/app/Activity;)V

    .line 158
    return-void
.end method

.method public static onWindowFocusChanged(Z)V
    .registers 2

    .prologue
    .line 181
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->b(Z)V

    .line 182
    return-void
.end method

.method public static openTapTapForum(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 470
    if-nez p0, :cond_3

    .line 474
    :goto_2
    return-void

    .line 473
    :cond_3
    const-string v0, "China"

    const-string v1, "cn"

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/common/JoyGame;->openTapTapForum(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static openTapTapForum(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 456
    if-nez p0, :cond_3

    .line 460
    :goto_2
    return-void

    .line 459
    :cond_3
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static payment(Landroid/app/Activity;Lcom/JoyFramework/common/PaymentInfo;)V
    .registers 4

    .prologue
    .line 101
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 102
    if-eqz p0, :cond_15

    .line 103
    new-instance v0, Lcom/JoyFramework/common/e;

    invoke-direct {v0, p0, p1}, Lcom/JoyFramework/common/e;-><init>(Landroid/app/Activity;Lcom/JoyFramework/common/PaymentInfo;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    :goto_14
    return-void

    .line 110
    :cond_15
    const-string v0, "JoyGame --> payment\u652f\u4ed8\u63a5\u53e3\u5fc5\u987b\u4f20\u5165 Activity"

    invoke-static {v0}, Lcom/JoyFramework/common/JoyGame;->toastOrThrowException(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_14

    .line 114
    :cond_1b
    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_14
.end method

.method public static playAd(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 350
    if-nez p0, :cond_b

    .line 351
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "playAd\u4f20\u5165\u7684Activity\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_b
    if-nez p2, :cond_15

    .line 354
    const-string v0, "\u8bf7\u4f20\u5165\u5e7f\u544a\u7684\u7c7b\u578b"

    new-array v1, v1, [Z

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 363
    :goto_14
    return-void

    .line 357
    :cond_15
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 358
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/common/IOnAdListener$Ad_Type;)V

    goto :goto_14

    .line 360
    :cond_27
    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    new-array v1, v1, [Z

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_14
.end method

.method public static roleOut()V
    .registers 1

    .prologue
    .line 201
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 202
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/c/e;->b()V

    .line 204
    :cond_11
    return-void
.end method

.method public static setExtraData(Landroid/app/Activity;Lcom/JoyFramework/common/ExtraDataInfo;)V
    .registers 3

    .prologue
    .line 185
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 186
    if-eqz p0, :cond_15

    .line 187
    new-instance v0, Lcom/JoyFramework/common/g;

    invoke-direct {v0, p0, p1}, Lcom/JoyFramework/common/g;-><init>(Landroid/app/Activity;Lcom/JoyFramework/common/ExtraDataInfo;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    :cond_14
    :goto_14
    return-void

    .line 194
    :cond_15
    const-string v0, "JoyGame --> setExtraData\u9000\u51fa\u63a5\u53e3\u5fc5\u987b\u4f20\u5165 Activity"

    invoke-static {v0}, Lcom/JoyFramework/common/JoyGame;->toastOrThrowException(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_14
.end method

.method public static setPaymentCallback(Lcom/JoyFramework/common/IPaymentCallback;)V
    .registers 2

    .prologue
    .line 307
    if-eqz p0, :cond_9

    .line 308
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/common/IPaymentCallback;)V

    .line 310
    :cond_9
    return-void
.end method

.method public static setUserListener(Lcom/JoyFramework/common/UserApiListenerInfo;)V
    .registers 2

    .prologue
    .line 141
    if-eqz p0, :cond_a

    .line 142
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/common/UserApiListenerInfo;)V

    .line 146
    :goto_9
    return-void

    .line 144
    :cond_a
    const-string v0, "JoyGame --> setUserListener\u9000\u51fa\u56de\u8c03\u63a5\u53e3\u5fc5\u987b\u4f20\u5165 Activity"

    invoke-static {v0}, Lcom/JoyFramework/common/JoyGame;->toastOrThrowException(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_9
.end method

.method public static setWelcome(Z)V
    .registers 2

    .prologue
    .line 218
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->a(Z)V

    .line 219
    return-void
.end method

.method public static share(Landroid/app/Activity;Lcom/JoyFramework/common/IShareCallback;)V
    .registers 4

    .prologue
    .line 408
    if-nez p0, :cond_a

    .line 409
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shareToQQ\u63a5\u53e3\u8bf7\u4f20\u5165\u7684Activity\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_a
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 412
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;Lcom/JoyFramework/common/IShareCallback;)V

    .line 416
    :goto_1b
    return-void

    .line 414
    :cond_1c
    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_1b
.end method

.method public static shareByType(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    return-void
.end method

.method public static showMoreGame(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 441
    if-nez p0, :cond_3

    .line 446
    :goto_2
    return-void

    .line 444
    :cond_3
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->l(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method public static showRealNamePage(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/common/IRealNameCallbackAdapter;)V
    .registers 5

    .prologue
    .line 529
    if-nez p0, :cond_a

    .line 530
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "showRealNamePage \u63a5\u53e3\u8bf7\u4f20\u5165Activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_a
    if-nez p2, :cond_d

    .line 556
    :goto_c
    return-void

    .line 537
    :cond_d
    sget-boolean v0, Lcom/JoyFramework/a/a;->q:Z

    if-eqz v0, :cond_46

    .line 538
    sget-boolean v0, Lcom/JoyFramework/a/a;->o:Z

    if-eqz v0, :cond_2d

    .line 539
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/c/e;->f()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/JoyFramework/common/IRealNameCallbackAdapter;->realName(Ljava/lang/String;I)V

    goto :goto_c

    .line 541
    :cond_2d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 542
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/JoyFramework/c/e;->a(Landroid/app/Activity;Lcom/JoyFramework/common/IRealNameCallbackAdapter;)V

    goto :goto_c

    .line 544
    :cond_3b
    new-instance v0, Lcom/JoyFramework/common/h;

    invoke-direct {v0, p0, p2}, Lcom/JoyFramework/common/h;-><init>(Landroid/app/Activity;Lcom/JoyFramework/common/IRealNameCallbackAdapter;)V

    const-string v1, "\u786e\u5b9a"

    invoke-static {p0, p1, v0, v1}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;)V

    goto :goto_c

    .line 554
    :cond_46
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/JoyFramework/common/IRealNameCallbackAdapter;->realName(Ljava/lang/String;I)V

    goto :goto_c
.end method

.method private static toastOrThrowException(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 279
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 280
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    if-eqz v0, :cond_1d

    .line 281
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 286
    :cond_1a
    const-string v0, ""

    return-object v0

    .line 283
    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wxPublicAccount(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 428
    if-eqz p0, :cond_13

    .line 429
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 430
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/JoyFramework/c/e;->k(Landroid/app/Activity;)V

    .line 435
    :cond_13
    :goto_13
    return-void

    .line 432
    :cond_14
    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {p0, v0, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_13
.end method
