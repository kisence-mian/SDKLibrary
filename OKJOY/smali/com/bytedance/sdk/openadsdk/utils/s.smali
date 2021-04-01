.class public Lcom/bytedance/sdk/openadsdk/utils/s;
.super Ljava/lang/Object;
.source "LoadUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/s$b;,
        Lcom/bytedance/sdk/openadsdk/utils/s$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/openadsdk/utils/s$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_f

    .line 61
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/s$b;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/s$b;-><init>(Lcom/bytedance/sdk/openadsdk/utils/s$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/s;->a:Lcom/bytedance/sdk/openadsdk/utils/s$a;

    .line 65
    :goto_e
    return-void

    .line 63
    :cond_f
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/s$a;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/s$a;-><init>(Lcom/bytedance/sdk/openadsdk/utils/s$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/s;->a:Lcom/bytedance/sdk/openadsdk/utils/s$a;

    goto :goto_e
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 68
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/s;->a:Lcom/bytedance/sdk/openadsdk/utils/s$a;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/s$a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 69
    return-void
.end method
