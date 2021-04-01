.class Lcom/bytedance/sdk/adnet/a/a$1;
.super Ljava/lang/Thread;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/a/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/a/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 110
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$1;->a:Lcom/bytedance/sdk/adnet/a/a;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a$1;->a:Lcom/bytedance/sdk/adnet/a/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/a/a;->b()V

    .line 114
    return-void
.end method
