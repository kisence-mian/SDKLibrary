.class public Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->a:Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->b:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->c:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->d:Z

    return-void
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->a:Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    return-object v0
.end method


# virtual methods
.method public initStart(Landroid/content/Context;)V
    .registers 9

    const-string v0, "true"

    const-string v1, "string"

    :try_start_4
    const-string v2, "fnlog2_enable"

    invoke-static {p1, v2, v1}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_3e

    const/4 v4, 0x0

    const-string v5, "1"

    const/4 v6, 0x1

    if-nez v3, :cond_20

    :try_start_18
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_21

    :cond_20
    const/4 v2, 0x1

    :goto_21
    iput-boolean v2, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->b:Z

    const-string v2, "fnlog1_disable"

    invoke-static {p1, v2, v1}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v4, 0x1

    :goto_3b
    iput-boolean v4, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->c:Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    move-exception v0

    :goto_3f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fnlog2 enable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fnlog1 disable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    invoke-direct {v0, p1}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->e:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    return-void
.end method

.method public isDisableLog1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->c:Z

    return v0
.end method

.method public isEnableLog2()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->b:Z

    return v0
.end method

.method public isForceDisableOpenAppLog()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->d:Z

    return v0
.end method

.method public logAppOpen()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->e:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->logAppOpen()V

    return-void
.end method

.method public logBeforeLogin()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->e:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->logBeforeLogin()V

    return-void
.end method

.method public logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->e:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->e:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->logCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->e:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logLoginFinish(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->e:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->logLoginFinish(Ljava/lang/String;)V

    return-void
.end method

.method public logRegister(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->e:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->logRegister(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logRoleLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->e:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->logRoleLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->e:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logUserOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->e:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->logUserOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisableLog1(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->c:Z

    return-void
.end method

.method public setEnableLog2(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->b:Z

    return-void
.end method

.method public setForceDisableOpenAppLog(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->d:Z

    return-void
.end method
