.class public Lcom/ssjj/fnsdk/core/entity/LoginData;
.super Lcom/ssjj/fnsdk/core/SsjjFNParams;


# static fields
.field private static final serialVersionUID:J = 0x16b9d961e50c8247L


# instance fields
.field public roleId:Ljava/lang/String;

.field public roleLevel:Ljava/lang/String;

.field public roleName:Ljava/lang/String;

.field public serverId:Ljava/lang/String;

.field public serverName:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 2

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/entity/LoginData;->fromParams(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method private checkVal(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method private checkVal2(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public fromParams(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    const-string v0, "roleId"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    const-string v0, "roleName"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    const-string v0, "roleLevel"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleLevel:Ljava/lang/String;

    const-string v0, "serverId"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    const-string v0, "serverName"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverName:Ljava/lang/String;

    return-void
.end method

.method public getErrMsg()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/entity/LoginData;->checkVal2(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_23
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/entity/LoginData;->checkVal2(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nroleId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_44
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/entity/LoginData;->checkVal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nroleName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_65
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleLevel:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/entity/LoginData;->checkVal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nroleLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_86
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/entity/LoginData;->checkVal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nserverId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a7
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/entity/LoginData;->checkVal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nserverName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c8
    return-object v1
.end method

.method public isAvail()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
