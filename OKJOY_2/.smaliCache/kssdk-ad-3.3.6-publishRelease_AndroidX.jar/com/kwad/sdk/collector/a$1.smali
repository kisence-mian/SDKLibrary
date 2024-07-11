.class final Lcom/kwad/sdk/collector/a$1;
.super Lcom/kwad/sdk/core/network/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/collector/a;->a(Landroid/content/Context;Lcom/kwad/sdk/collector/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/i<",
        "Lcom/kwad/sdk/collector/a/a;",
        "Lcom/kwad/sdk/collector/AppStatusRules;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/collector/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/kwad/sdk/collector/AppStatusRules;
    .registers 2

    invoke-static {p1}, Lcom/kwad/sdk/collector/AppStatusRules;->createFromJson(Ljava/lang/String;)Lcom/kwad/sdk/collector/AppStatusRules;

    move-result-object p1

    return-object p1
.end method

.method protected a()Lcom/kwad/sdk/collector/a/a;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/collector/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/utils/AppStatusHelper;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/collector/a/a;

    invoke-direct {v1, v0}, Lcom/kwad/sdk/collector/a/a;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected synthetic b(Ljava/lang/String;)Lcom/kwad/sdk/core/network/BaseResultData;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/collector/a$1;->a(Ljava/lang/String;)Lcom/kwad/sdk/collector/AppStatusRules;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b()Lcom/kwad/sdk/core/network/g;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/collector/a$1;->a()Lcom/kwad/sdk/collector/a/a;

    move-result-object v0

    return-object v0
.end method
