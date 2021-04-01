.class public abstract Lcom/mintegral/msdk/video/js/activity/AbstractActivity;
.super Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;
.source "AbstractActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;
    }
.end annotation


# static fields
.field protected static final ERROR_UNKNOWN:I


# instance fields
.field protected errorListener:Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;

.field protected loadSuccess:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->loadSuccess:Z

    .line 22
    new-instance v0, Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a$a;

    invoke-direct {v0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a$a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->errorListener:Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;

    return-void
.end method


# virtual methods
.method public abstract checkEnv(Landroid/content/Intent;)Z
.end method

.method public defaultLoad(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 66
    const-string v0, "AbstractJSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receiveError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",descroption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public findID(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findLayout(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract getLayoutID()I
.end method

.method protected abstract initVideoView()Z
.end method

.method public isLoadSuccess()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->loadSuccess:Z

    return v0
.end method

.method protected abstract loadVideoData()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 27
    :try_start_0
    const-string v0, "AbstractJSActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/activity/AbstractJSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->checkEnv(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 30
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->getLayoutID()I

    move-result v0

    .line 31
    if-gtz v0, :cond_2c

    .line 32
    const-string v0, "AbstractJSActivity"

    const-string v1, "layoutID not found"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->errorListener:Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;

    const-string v1, "not found resource"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;->a(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->finish()V

    .line 56
    :goto_2b
    return-void

    .line 36
    :cond_2c
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->initVideoView()Z

    move-result v0

    .line 38
    if-nez v0, :cond_63

    .line 39
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->errorListener:Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;

    const-string v1, "not found View IDS"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;->a(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->finish()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_2b

    .line 51
    :catch_40
    move-exception v0

    .line 52
    const-string v1, "AbstractJSActivity"

    const-string v2, "onCreate error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreate error."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->defaultLoad(ILjava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->finish()V

    goto :goto_2b

    .line 42
    :cond_63
    const/4 v0, 0x1

    :try_start_64
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->loadSuccess:Z

    .line 43
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->loadVideoData()V

    goto :goto_2b

    .line 47
    :cond_6a
    const-string v0, "AbstractJSActivity"

    const-string v1, "checkEnv error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->errorListener:Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;

    const-string v1, "data error"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;->a(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->finish()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_7b} :catch_40

    goto :goto_2b
.end method

.method public receiveSuccess()V
    .registers 3

    .prologue
    .line 70
    const-string v0, "AbstractJSActivity"

    const-string v1, "receiveSuccess"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public registerErrorListener(Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/activity/AbstractActivity;->errorListener:Lcom/mintegral/msdk/video/js/activity/AbstractActivity$a;

    .line 76
    return-void
.end method
