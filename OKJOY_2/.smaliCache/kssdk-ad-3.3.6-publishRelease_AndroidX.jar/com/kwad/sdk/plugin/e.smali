.class public Lcom/kwad/sdk/plugin/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V
    .registers 4

    const-class v0, Lcom/kwad/sdk/plugin/c;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/plugin/d;

    invoke-interface {v0}, Lcom/kwad/sdk/plugin/d;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kwad/sdk/plugin/f;->a(Ljava/lang/Class;Lcom/kwad/sdk/plugin/d;)V

    invoke-interface {v0, p0, p1}, Lcom/kwad/sdk/plugin/d;->a(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V

    const-class v0, Lcom/kwad/sdk/a;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/plugin/d;

    invoke-interface {v0}, Lcom/kwad/sdk/plugin/d;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kwad/sdk/plugin/f;->a(Ljava/lang/Class;Lcom/kwad/sdk/plugin/d;)V

    invoke-interface {v0, p0, p1}, Lcom/kwad/sdk/plugin/d;->a(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V

    return-void
.end method
