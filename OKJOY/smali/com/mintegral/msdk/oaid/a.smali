.class public final Lcom/mintegral/msdk/oaid/a;
.super Ljava/lang/Object;
.source "OaidAidlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/oaid/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/ServiceConnection;

.field private c:Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;

.field private d:Lcom/mintegral/msdk/oaid/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mintegral/msdk/oaid/a;->a:Landroid/content/Context;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/oaid/a;)Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a;->c:Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/oaid/a;Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;)Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;
    .registers 2

    .prologue
    .line 12
    iput-object p1, p0, Lcom/mintegral/msdk/oaid/a;->c:Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;

    return-object p1
.end method

.method static synthetic b(Lcom/mintegral/msdk/oaid/a;)Lcom/mintegral/msdk/oaid/b;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a;->d:Lcom/mintegral/msdk/oaid/b;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/oaid/a;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1040
    const-string v0, "OaidAidlUtil"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a;->a:Landroid/content/Context;

    if-nez v0, :cond_14

    .line 1042
    const-string v0, "OaidAidlUtil"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_13
    :goto_13
    return-void

    .line 1045
    :cond_14
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a;->b:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_13

    .line 1046
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/oaid/a;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1047
    iput-object v2, p0, Lcom/mintegral/msdk/oaid/a;->c:Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;

    .line 1048
    iput-object v2, p0, Lcom/mintegral/msdk/oaid/a;->a:Landroid/content/Context;

    .line 1049
    iput-object v2, p0, Lcom/mintegral/msdk/oaid/a;->d:Lcom/mintegral/msdk/oaid/b;

    goto :goto_13
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/oaid/b;)V
    .registers 6

    .prologue
    .line 59
    :try_start_0
    iput-object p1, p0, Lcom/mintegral/msdk/oaid/a;->d:Lcom/mintegral/msdk/oaid/b;

    .line 1026
    const-string v0, "OaidAidlUtil"

    const-string v1, "bindService"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/mintegral/msdk/oaid/a;->a:Landroid/content/Context;

    if-nez v0, :cond_15

    .line 1028
    const-string v0, "OaidAidlUtil"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :goto_14
    return-void

    .line 1031
    :cond_15
    new-instance v0, Lcom/mintegral/msdk/oaid/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/oaid/a$a;-><init>(Lcom/mintegral/msdk/oaid/a;B)V

    iput-object v0, p0, Lcom/mintegral/msdk/oaid/a;->b:Landroid/content/ServiceConnection;

    .line 1032
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1033
    const-string v1, "com.huawei.hwid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    iget-object v1, p0, Lcom/mintegral/msdk/oaid/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/oaid/a;->b:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1035
    const-string v1, "OaidAidlUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindService result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_14

    .line 61
    :catch_47
    move-exception v0

    .line 62
    const-string v1, "OaidAidlUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOaid exp: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method
