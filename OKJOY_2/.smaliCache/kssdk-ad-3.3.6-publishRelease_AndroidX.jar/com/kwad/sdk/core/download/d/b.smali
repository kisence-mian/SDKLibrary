.class public Lcom/kwad/sdk/core/download/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/export/proxy/AdInstallProxy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installApp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/kwad/sdk/utils/u;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
