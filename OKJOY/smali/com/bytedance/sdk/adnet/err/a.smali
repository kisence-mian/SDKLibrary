.class public Lcom/bytedance/sdk/adnet/err/a;
.super Lcom/bytedance/sdk/adnet/err/VAdError;
.source "AuthFailureError.java"


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/j;)V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Lcom/bytedance/sdk/adnet/core/j;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/err/a;->a:Landroid/content/Intent;

    if-eqz v0, :cond_7

    .line 59
    const-string v0, "User needs to (re)enter credentials."

    .line 61
    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
