.class final Lcom/kwad/sdk/utils/AppStatusHelper$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/utils/AppStatusHelper;->c(Landroid/content/Context;Lcom/kwad/sdk/utils/AppStatusHelper$b;)V
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

    iput-object p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$6;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/kwad/sdk/utils/AppStatusHelper$6;->b:Lcom/kwad/sdk/utils/AppStatusHelper$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$6;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/utils/AppStatusHelper;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$6;->b:Lcom/kwad/sdk/utils/AppStatusHelper$b;

    if-eqz v1, :cond_d

    invoke-interface {v1, v0}, Lcom/kwad/sdk/utils/AppStatusHelper$b;->a(Ljava/util/List;)V

    :cond_d
    return-void
.end method
