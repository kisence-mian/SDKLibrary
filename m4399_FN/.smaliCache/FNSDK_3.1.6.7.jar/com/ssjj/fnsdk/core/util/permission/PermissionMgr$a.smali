.class Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:[Ljava/lang/String;

.field b:Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;

.field final synthetic c:Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;[Ljava/lang/String;Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;->c:Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;->b:Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;

    return-void
.end method
