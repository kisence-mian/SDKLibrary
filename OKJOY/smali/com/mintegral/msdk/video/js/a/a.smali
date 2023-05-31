.class public Lcom/mintegral/msdk/video/js/a/a;
.super Ljava/lang/Object;
.source "DefaultJSActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 17
    const-string v0, "js"

    const-string v1, "DefaultJSActivity-onPause"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public a(I)V
    .registers 5

    .prologue
    .line 48
    const-string v0, "js"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSystemResume,isResume:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 5

    .prologue
    .line 32
    const-string v0, "js"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DefaultJSActivity-onConfigurationChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 22
    const-string v0, "js"

    const-string v1, "DefaultJSActivity-onResume"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 27
    const-string v0, "js"

    const-string v1, "DefaultJSActivity-onDestory"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 37
    const-string v0, "js"

    const-string v1, "DefaultJSActivity-onBackPressed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public e()I
    .registers 3

    .prologue
    .line 42
    const-string v0, "js"

    const-string v1, "isSystemResume"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    return v0
.end method
