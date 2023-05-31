.class Lcom/bytedance/tea/crash/a/d$1;
.super Ljava/lang/Object;
.source "ANRThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/tea/crash/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/tea/crash/a/d;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/bytedance/tea/crash/a/d$1;->a:Lcom/bytedance/tea/crash/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bytedance/tea/crash/a/d$1;->a:Lcom/bytedance/tea/crash/a/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/a/d;->a(Lcom/bytedance/tea/crash/a/d;Z)Z

    .line 25
    return-void
.end method
