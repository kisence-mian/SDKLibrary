.class final Lcom/bytedance/sdk/adnet/a$2;
.super Ljava/lang/Thread;
.source "AdNetSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 182
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/a$2;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/a/a;->c()V

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a/a;->b(Landroid/content/Context;)V

    .line 187
    return-void
.end method
