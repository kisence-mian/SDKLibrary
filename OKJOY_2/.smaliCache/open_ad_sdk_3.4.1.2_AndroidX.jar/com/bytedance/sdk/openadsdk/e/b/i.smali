.class public Lcom/bytedance/sdk/openadsdk/e/b/i;
.super Lcom/bytedance/sdk/openadsdk/e/a/d;
.source "ShowAppDetailOrPrivacyDialogMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/e/a/d<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/d;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/b/i;->a:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/e/a/q;Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 3

    .line 29
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/b/i$1;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/e/b/i$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    const-string p1, "showAppDetailOrPrivacyDialog"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/q;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/d$b;)Lcom/bytedance/sdk/openadsdk/e/a/q;

    .line 35
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/e/a/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/b/i;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result p2

    const-string v0, "ShowAppDetailOrPrivacyDialogMethod"

    if-eqz p2, :cond_2b

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JSB-REQ] version: 3 data="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1e
    const-string v1, ""

    :goto_20
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2b
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/e/b/i;->a:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_30

    .line 54
    return-void

    .line 56
    :cond_30
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/x;

    .line 57
    if-nez p2, :cond_3c

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/e/b/i;->c()V

    .line 59
    return-void

    .line 61
    :cond_3c
    if-nez p1, :cond_3f

    .line 62
    return-void

    .line 64
    :cond_3f
    const-string v1, "show_dialog_style"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 65
    const/4 v1, 0x1

    if-ne p1, v1, :cond_51

    .line 66
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/x;->j()V

    .line 67
    const-string p1, "ShowAppDetailOrPrivacyDialogMethod showAppDetailDialog "

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 68
    :cond_51
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5c

    .line 69
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/x;->i()V

    .line 70
    const-string p1, "ShowAppDetailOrPrivacyDialogMethod showAppPrivacyDialog "

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_5c
    :goto_5c
    return-void
.end method
