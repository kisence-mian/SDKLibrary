.class public Lcom/bytedance/tea/crash/d/c;
.super Ljava/lang/Object;
.source "JavaCrash.java"

# interfaces
.implements Lcom/bytedance/tea/crash/d/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/bytedance/tea/crash/d/c;->a:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 10

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bytedance/tea/crash/d/c;->a:Landroid/content/Context;

    invoke-static {p1, p2, v0, p3, p4}, Lcom/bytedance/tea/crash/c/a;->a(JLandroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/bytedance/tea/crash/c/a;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/bytedance/tea/crash/d/c;->a:Landroid/content/Context;

    sget-object v2, Lcom/bytedance/tea/crash/c;->b:Lcom/bytedance/tea/crash/c;

    invoke-virtual {v2}, Lcom/bytedance/tea/crash/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bytedance/tea/crash/g/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/bytedance/tea/crash/e/a/e;->a()Lcom/bytedance/tea/crash/e/a/e;

    move-result-object v1

    sget-object v2, Lcom/bytedance/tea/crash/c;->b:Lcom/bytedance/tea/crash/c;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/tea/crash/e/a/e;->a(Lcom/bytedance/tea/crash/c;Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/bytedance/tea/crash/upload/a;->a()Lcom/bytedance/tea/crash/upload/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/c/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/tea/crash/upload/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 46
    return-void
.end method

.method public a(Ljava/lang/Throwable;)Z
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
