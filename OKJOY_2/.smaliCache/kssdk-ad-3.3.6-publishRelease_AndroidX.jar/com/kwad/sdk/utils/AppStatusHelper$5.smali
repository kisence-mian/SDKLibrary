.class final Lcom/kwad/sdk/utils/AppStatusHelper$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/utils/AppStatusHelper;->b(Landroid/content/Context;Lcom/kwad/sdk/utils/AppStatusHelper$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/kwad/sdk/utils/AppStatusHelper$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/utils/AppStatusHelper$b;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/kwad/sdk/utils/AppStatusHelper$5;->b:Lcom/kwad/sdk/utils/AppStatusHelper$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/utils/AppStatusHelper;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/kwad/sdk/collector/b;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/utils/AppStatusHelper;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppRunningInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppStatusHelper"

    invoke-static {v3, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_3c
    iget-object v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$5;->b:Lcom/kwad/sdk/utils/AppStatusHelper$b;

    if-eqz v1, :cond_43

    invoke-interface {v1, v0}, Lcom/kwad/sdk/utils/AppStatusHelper$b;->a(Ljava/util/List;)V

    :cond_43
    return-void
.end method
