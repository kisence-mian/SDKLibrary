.class public Lcom/ssjj/fnsdk/core/EnvConfigRes;
.super Ljava/lang/Object;


# static fields
.field public static needRequestPermissionForInit:Z

.field public static overseaId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ssjj/fnsdk/core/EnvConfigRes;->needRequestPermissionForInit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    :try_start_0
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_61

    :cond_13
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2f

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_29

    const/4 p0, 0x0

    goto :goto_2a

    :cond_29
    const/4 p0, 0x1

    :goto_2a
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_61

    :cond_2f
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_38

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    goto :goto_61

    :cond_38
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_41

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    goto :goto_61

    :cond_41
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4a

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    goto :goto_61

    :cond_4a
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_53

    invoke-static {p0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p2

    goto :goto_61

    :cond_53
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_5c

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p2

    goto :goto_61

    :cond_5c
    instance-of p2, p2, Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_60

    move-object p2, p0

    goto :goto_61

    :catch_60
    move-exception p0

    :goto_61
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Get fn config ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "] = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-object p2
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "fn_need_req_permission_for_init"

    invoke-static {p0, v1, v0}, Lcom/ssjj/fnsdk/core/EnvConfigRes;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/ssjj/fnsdk/core/EnvConfigRes;->needRequestPermissionForInit:Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "fn_oversea_id"

    invoke-static {p0, v1, v0}, Lcom/ssjj/fnsdk/core/EnvConfigRes;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/ssjj/fnsdk/core/EnvConfigRes;->overseaId:I

    return-void
.end method
