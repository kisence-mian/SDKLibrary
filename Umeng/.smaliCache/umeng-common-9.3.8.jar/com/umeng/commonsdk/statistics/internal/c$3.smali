.class Lcom/umeng/commonsdk/statistics/internal/c$3;
.super Ljava/lang/Object;
.source "NetworkHelper.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/statistics/internal/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/statistics/internal/c;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/statistics/internal/c;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c$3;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> first onImprintValueChanged: key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; value= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobclickRT"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->a()Lcom/umeng/commonsdk/config/FieldManager;

    move-result-object p1

    .line 242
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/internal/c$3;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/umeng/commonsdk/config/FieldManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c$3;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/c;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/umeng/commonsdk/statistics/internal/c$3;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    .line 245
    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/c;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object p2

    .line 244
    const v1, 0x8010

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 247
    const-string p1, "header_foreground_count"

    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 248
    const-string p1, "--->>> recv zcfg response: foregound count timer enabled."

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist()Z

    move-result p1

    if-nez p1, :cond_75

    .line 250
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c$3;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/c;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2015

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c$3;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    .line 251
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    .line 250
    invoke-static/range {v1 .. v6}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    .line 254
    :cond_75
    const-string p1, "header_first_resume"

    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 255
    const-string p1, "--->>> recv zcfg response: FirstResumeTrigger enabled."

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c$3;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object p1

    iget-object p2, p0, Lcom/umeng/commonsdk/statistics/internal/c$3;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/c;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;)V

    .line 258
    :cond_95
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/c$3;->a:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p1

    const-string p2, "cfgfd"

    invoke-virtual {p1, p2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->unregistImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    .line 259
    return-void
.end method
