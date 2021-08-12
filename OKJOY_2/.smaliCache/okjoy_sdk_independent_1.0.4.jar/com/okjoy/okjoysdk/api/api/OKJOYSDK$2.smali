.class public Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$RequestPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->init(Landroid/app/Activity;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$initModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;Landroid/app/Activity;Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;)V
    .registers 4

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;->this$0:Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;->val$initModel:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkInitModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsGranted()V
    .registers 4

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2$1;

    invoke-direct {v1, p0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2$1;-><init>(Lcom/okjoy/okjoysdk/api/api/OKJOYSDK$2;)V

    .line 1
    new-instance v2, Lokjoy/h/n;

    invoke-direct {v2, v0}, Lokjoy/h/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lokjoy/h/y;

    invoke-direct {v2, v1}, Lokjoy/h/y;-><init>(Lokjoy/h/c;)V

    const-string v1, "https://sdk.ok-joy.com/common/?ct=system&ac=init"

    invoke-static {v1, v0, v2}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    return-void
.end method
