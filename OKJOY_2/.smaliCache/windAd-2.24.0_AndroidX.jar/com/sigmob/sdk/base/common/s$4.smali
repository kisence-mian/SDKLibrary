.class final Lcom/sigmob/sdk/base/common/s$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic d:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/pm/PackageInfo;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/s$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/s$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/s$4;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/s$4;->d:Landroid/content/pm/PackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/s$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/s$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/s$4;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v3, Lcom/sigmob/sdk/base/common/s$4$1;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/base/common/s$4$1;-><init>(Lcom/sigmob/sdk/base/common/s$4;)V

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method
