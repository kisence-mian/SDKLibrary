.class Lcom/ssjj/fnsdk/core/util/permission/a;
.super Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;


# instance fields
.field final synthetic b:Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;

.field private final synthetic c:I

.field private final synthetic d:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;Landroid/content/Context;I[Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->b:Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;

    iput p3, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->c:I

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->d:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method c()V
    .registers 4

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/util/permission/a;->dismiss()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->c:I

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a(I[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->b:Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->finish()V

    return-void
.end method

.method d()V
    .registers 4

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/util/permission/a;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->b:Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;

    iget v1, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->c:I

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a(Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->b:Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;

    invoke-static {v0, v0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a(Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a(Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->b:Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a(Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->c:I

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a(I[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/a;->b:Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->finish()V

    :cond_2b
    return-void
.end method
