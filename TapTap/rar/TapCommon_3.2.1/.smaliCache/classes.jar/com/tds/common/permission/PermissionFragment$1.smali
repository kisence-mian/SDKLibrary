.class Lcom/tds/common/permission/PermissionFragment$1;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/permission/PermissionFragment;->requestPermission(Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Lcom/tds/common/permission/PermissionConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/permission/PermissionFragment;

.field final synthetic val$callback:Lcom/tds/common/permission/RequestPermissionCallback;

.field final synthetic val$config:Lcom/tds/common/permission/PermissionConfig;

.field final synthetic val$permissions:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/tds/common/permission/PermissionFragment;Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Lcom/tds/common/permission/PermissionConfig;)V
    .registers 5
    .param p1, "this$0"    # Lcom/tds/common/permission/PermissionFragment;

    .line 33
    iput-object p1, p0, Lcom/tds/common/permission/PermissionFragment$1;->this$0:Lcom/tds/common/permission/PermissionFragment;

    iput-object p2, p0, Lcom/tds/common/permission/PermissionFragment$1;->val$permissions:Ljava/util/Set;

    iput-object p3, p0, Lcom/tds/common/permission/PermissionFragment$1;->val$callback:Lcom/tds/common/permission/RequestPermissionCallback;

    iput-object p4, p0, Lcom/tds/common/permission/PermissionFragment$1;->val$config:Lcom/tds/common/permission/PermissionConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 36
    iget-object v0, p0, Lcom/tds/common/permission/PermissionFragment$1;->this$0:Lcom/tds/common/permission/PermissionFragment;

    # getter for: Lcom/tds/common/permission/PermissionFragment;->mFragmentDelegate:Lcom/tds/common/permission/FragmentDelegate;
    invoke-static {v0}, Lcom/tds/common/permission/PermissionFragment;->access$000(Lcom/tds/common/permission/PermissionFragment;)Lcom/tds/common/permission/FragmentDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/permission/PermissionFragment$1;->val$permissions:Ljava/util/Set;

    iget-object v2, p0, Lcom/tds/common/permission/PermissionFragment$1;->val$callback:Lcom/tds/common/permission/RequestPermissionCallback;

    iget-object v3, p0, Lcom/tds/common/permission/PermissionFragment$1;->val$config:Lcom/tds/common/permission/PermissionConfig;

    invoke-interface {v0, v1, v2, v3}, Lcom/tds/common/permission/FragmentDelegate;->requestPermission(Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Lcom/tds/common/permission/PermissionConfig;)V

    .line 37
    return-void
.end method
