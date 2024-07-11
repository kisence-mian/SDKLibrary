.class Lcom/bytedance/sdk/adnet/a/a$2;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/a/a;->b(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bytedance/sdk/adnet/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/a/a;Z)V
    .registers 3

    .line 179
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$2;->b:Lcom/bytedance/sdk/adnet/a/a;

    iput-boolean p2, p0, Lcom/bytedance/sdk/adnet/a/a$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a$2;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget-boolean v1, p0, Lcom/bytedance/sdk/adnet/a/a$2;->a:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/a/a;->c(Z)V

    .line 183
    return-void
.end method
