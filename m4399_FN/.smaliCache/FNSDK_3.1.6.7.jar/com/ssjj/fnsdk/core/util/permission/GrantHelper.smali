.class public abstract Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public btnCancel()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public btnOk()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public needShowCustomRequestDialog()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onDenied([Ljava/lang/String;)V
.end method

.method public abstract onGranted([Ljava/lang/String;)V
.end method

.method public rationale([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public title([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
