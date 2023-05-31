.class Lcom/tapsdk/moment/LongClickHandler$1;
.super Ljava/lang/Object;
.source "LongClickHandler.java"

# interfaces
.implements Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/LongClickHandler;->saveImageToMedia(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/LongClickHandler;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/LongClickHandler;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tapsdk/moment/LongClickHandler;

    .line 56
    iput-object p1, p0, Lcom/tapsdk/moment/LongClickHandler$1;->this$0:Lcom/tapsdk/moment/LongClickHandler;

    iput-object p2, p0, Lcom/tapsdk/moment/LongClickHandler$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(ILjava/lang/String;)V
    .registers 8
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 59
    if-nez p1, :cond_37

    .line 60
    iget-object v0, p0, Lcom/tapsdk/moment/LongClickHandler$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tds/common/permission/TdsPermission;->with(Landroid/app/Activity;)Lcom/tds/common/permission/PermissionCollection;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/tds/common/permission/PermissionCollection;->permission([Ljava/lang/String;)Lcom/tds/common/permission/PermissionCollection;

    move-result-object v0

    new-instance v1, Lcom/tds/common/permission/PermissionConfig;

    .line 62
    const-string v2, "access_file_permission"

    invoke-static {v2}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v3, "save_image_hint"

    invoke-static {v3}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    const-string v4, "to_open"

    invoke-static {v4}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tds/common/permission/PermissionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/tds/common/permission/PermissionCollection;->forwardSetting(Lcom/tds/common/permission/PermissionConfig;)Lcom/tds/common/permission/PermissionCollection;

    move-result-object v0

    new-instance v1, Lcom/tapsdk/moment/LongClickHandler$1$1;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/LongClickHandler$1$1;-><init>(Lcom/tapsdk/moment/LongClickHandler$1;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/tds/common/permission/PermissionCollection;->request(Lcom/tds/common/permission/RequestPermissionCallback;)V

    .line 76
    :cond_37
    return-void
.end method
