.class Lcom/bytedance/sdk/openadsdk/component/splash/b$a;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

.field public e:Lcom/bytedance/sdk/openadsdk/g/a/c;

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 7

    .line 1117
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->f:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->a:I

    .line 1119
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->b:I

    .line 1120
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->c:Ljava/lang/String;

    .line 1121
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->d:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    .line 1122
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;->e:Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 1123
    return-void
.end method
