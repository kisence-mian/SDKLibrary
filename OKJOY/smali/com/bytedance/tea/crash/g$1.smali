.class final Lcom/bytedance/tea/crash/g$1;
.super Ljava/lang/Object;
.source "Npth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/tea/crash/g;->a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 198
    iput-object p1, p0, Lcom/bytedance/tea/crash/g$1;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/bytedance/tea/crash/g$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 201
    invoke-static {}, Lcom/bytedance/tea/crash/b/a;->a()Lcom/bytedance/tea/crash/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/tea/crash/g$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/b/a;->a(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lcom/bytedance/tea/crash/g$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/upload/d;->a(Landroid/content/Context;)V

    .line 203
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/g$1;->b:Z

    if-eqz v0, :cond_1b

    .line 204
    iget-object v0, p0, Lcom/bytedance/tea/crash/g$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/a/f;->a(Landroid/content/Context;)Lcom/bytedance/tea/crash/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/a/f;->a()V

    .line 206
    :cond_1b
    return-void
.end method
