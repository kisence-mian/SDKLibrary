.class final Lcom/bytedance/sdk/a/b/a/c$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 213
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/c$2;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/bytedance/sdk/a/b/a/c$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c$2;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 217
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/c$2;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 218
    return-object v0
.end method
