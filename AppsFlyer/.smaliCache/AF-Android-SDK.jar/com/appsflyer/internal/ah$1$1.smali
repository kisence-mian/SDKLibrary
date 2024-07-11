.class final Lcom/appsflyer/internal/ah$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ah$1;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/appsflyer/internal/ah$1$1;->AFInAppEventParameterName:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 80
    invoke-static {}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Lcom/appsflyer/internal/f;

    iget-object v0, p0, Lcom/appsflyer/internal/ah$1$1;->AFInAppEventParameterName:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1270
    invoke-static {v0}, Lcom/appsflyer/internal/f;->AFKeystoreWrapper(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/appsflyer/internal/f;->AFInAppEventParameterName:Landroid/content/Intent;

    if-eq v0, v1, :cond_15

    .line 1271
    sput-object v0, Lcom/appsflyer/internal/f;->AFInAppEventParameterName:Landroid/content/Intent;

    .line 81
    :cond_15
    return-void
.end method
