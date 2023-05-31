.class final Lcom/mintegral/msdk/activity/MTGCommonActivity$1;
.super Ljava/lang/Object;
.source "MTGCommonActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/base/webview/BrowserView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/activity/MTGCommonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/activity/MTGCommonActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/activity/MTGCommonActivity;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity$1;->a:Lcom/mintegral/msdk/activity/MTGCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity$1;->a:Lcom/mintegral/msdk/activity/MTGCommonActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->finish()V

    .line 126
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 131
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 135
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/j$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity$1;->a:Lcom/mintegral/msdk/activity/MTGCommonActivity;

    const/4 v1, 0x0

    .line 136
    invoke-static {v0, p1, v1}, Lcom/mintegral/msdk/base/utils/j$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 137
    iget-object v0, p0, Lcom/mintegral/msdk/activity/MTGCommonActivity$1;->a:Lcom/mintegral/msdk/activity/MTGCommonActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/activity/MTGCommonActivity;->finish()V

    .line 139
    :cond_14
    const/4 v0, 0x0

    return v0
.end method
