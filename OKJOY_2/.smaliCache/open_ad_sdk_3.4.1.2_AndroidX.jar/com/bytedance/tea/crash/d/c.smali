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

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/bytedance/tea/crash/d/c;->a:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 27
    iget-object v0, p0, Lcom/bytedance/tea/crash/d/c;->a:Landroid/content/Context;

    invoke-static {p1, p2, v0, p3, p4}, Lcom/bytedance/tea/crash/c/a;->a(JLandroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/bytedance/tea/crash/c/a;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/bytedance/tea/crash/d/c;->a:Landroid/content/Context;

    sget-object p3, Lcom/bytedance/tea/crash/c;->b:Lcom/bytedance/tea/crash/c;

    invoke-virtual {p3}, Lcom/bytedance/tea/crash/c;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/bytedance/tea/crash/g/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/bytedance/tea/crash/e/a/e;->a()Lcom/bytedance/tea/crash/e/a/e;

    move-result-object p2

    sget-object p3, Lcom/bytedance/tea/crash/c;->b:Lcom/bytedance/tea/crash/c;

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/tea/crash/e/a/e;->a(Lcom/bytedance/tea/crash/c;Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;

    move-result-object p1

    .line 31
    invoke-static {}, Lcom/bytedance/tea/crash/upload/a;->a()Lcom/bytedance/tea/crash/upload/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/c/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/tea/crash/upload/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 46
    return-void
.end method

.method public a(Ljava/lang/Throwable;)Z
    .registers 2

    .line 50
    const/4 p1, 0x1

    return p1
.end method
