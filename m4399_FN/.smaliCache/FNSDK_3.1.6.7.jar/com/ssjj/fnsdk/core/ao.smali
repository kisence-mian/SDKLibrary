.class Lcom/ssjj/fnsdk/core/ao;
.super Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;


# instance fields
.field private final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Z


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ao;->a:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/ao;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/ao;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/ao;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/ao;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/ssjj/fnsdk/core/ao;->f:Z

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public btnCancel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ao;->d:Ljava/lang/String;

    return-object v0
.end method

.method public btnOk()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ao;->e:Ljava/lang/String;

    return-object v0
.end method

.method public needShowCustomRequestDialog()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/ao;->f:Z

    return v0
.end method

.method public onDenied([Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    :goto_8
    array-length v3, p1

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1c

    const-string v2, "permissions"

    invoke-virtual {v0, v2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ao;->a:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v1, "Request permissions failed."

    invoke-interface {p1, v4, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v3, p1

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_46

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public onGranted([Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v1, "permissions"

    invoke-virtual {v0, v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ao;->a:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v1, 0x0

    const-string v2, "Request permissions success."

    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method public rationale([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ao;->c:Ljava/lang/String;

    return-object p1
.end method

.method public title([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ao;->b:Ljava/lang/String;

    return-object p1
.end method
