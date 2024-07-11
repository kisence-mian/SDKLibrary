.class public Lcom/qq/e/comm/managers/devtool/DevTools;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDemoGameUrl()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/qq/e/comm/managers/devtool/DevTools;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qq/e/comm/managers/devtool/DevTools;->a:Ljava/lang/String;

    return-object v0
.end method

.method public testDemoGame(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.qq.e.union.demo.union"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return-void

    :cond_14
    iput-object p2, p0, Lcom/qq/e/comm/managers/devtool/DevTools;->a:Ljava/lang/String;

    return-void
.end method
