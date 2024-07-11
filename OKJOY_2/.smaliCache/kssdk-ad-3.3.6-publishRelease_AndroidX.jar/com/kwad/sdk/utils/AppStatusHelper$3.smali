.class final Lcom/kwad/sdk/utils/AppStatusHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/utils/AppStatusHelper;->a(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/utils/AppStatusHelper$3$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/utils/AppStatusHelper$3$1;-><init>(Lcom/kwad/sdk/utils/AppStatusHelper$3;)V

    iget-object v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$3;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kwad/sdk/collector/a;->a(Landroid/content/Context;Lcom/kwad/sdk/collector/a$a;)V

    return-void
.end method
