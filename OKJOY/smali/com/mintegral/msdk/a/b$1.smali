.class final Lcom/mintegral/msdk/a/b$1;
.super Lcom/mintegral/msdk/base/common/net/a/f;
.source "OmsdkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/a/b;->a(Landroid/content/Context;)V
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

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mintegral/msdk/a/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 55
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/a/b$1;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 65
    const-string v0, "OMSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetch OMJSContent failed, errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v1, p0, Lcom/mintegral/msdk/a/b$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, "fetch OM failed, request failed"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/base/common/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 58
    sput-object p1, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_CONTENT:Ljava/lang/String;

    .line 59
    const-string v0, "OMSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetch OMJSContent success, content = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/a/b$2;

    invoke-direct {v1, p1}, Lcom/mintegral/msdk/a/b$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1183
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method
