.class Lcom/ssjj/fnsdk/core/util/permission/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;I)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/util/permission/b;->a:Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    iput p2, p0, Lcom/ssjj/fnsdk/core/util/permission/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/b;->a:Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a(Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/util/permission/b;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;

    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;->b:Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr$a;->a:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->onGranted([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/b;->a:Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a(Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/util/permission/b;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_28

    :cond_23
    const-string v0, "onUIThreadGranted: bean is null"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :goto_28
    return-void
.end method
