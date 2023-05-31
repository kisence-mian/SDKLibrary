.class public Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;
.super Lcom/mintegral/msdk/mtgjscommon/windvane/i;
.source "PrivateAuthorityJSBridge.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/i;-><init>()V

    .line 21
    return-void
.end method

.method private finishActivity(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 53
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close activity"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    if-eqz v0, :cond_23

    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->finish()V

    .line 57
    :cond_23
    return-void
.end method


# virtual methods
.method public getPrivateAuthorityStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 28
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GET authorityStatusString:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v0, ""

    :goto_26
    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    return-void

    .line 31
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method public setPrivateAuthorityStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 38
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SET authorityStatusString:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 40
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;->finishActivity(Ljava/lang/Object;)V

    .line 49
    :goto_1d
    return-void

    .line 44
    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->b(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_25} :catch_29
    .catchall {:try_start_1e .. :try_end_25} :catchall_31

    .line 48
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;->finishActivity(Ljava/lang/Object;)V

    goto :goto_1d

    .line 46
    :catch_29
    move-exception v0

    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31

    .line 48
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;->finishActivity(Ljava/lang/Object;)V

    goto :goto_1d

    :catchall_31
    move-exception v0

    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgjscommon/authority/jscommon/PrivateAuthorityJSBridge;->finishActivity(Ljava/lang/Object;)V

    throw v0
.end method
