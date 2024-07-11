.class final Lcom/bytedance/sdk/openadsdk/downloadnew/a$1;
.super Ljava/lang/Object;
.source "TTDownloadFactory.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;

    if-eqz v0, :cond_7

    .line 63
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;->onExitInstall()V

    .line 65
    :cond_7
    return-void
.end method
