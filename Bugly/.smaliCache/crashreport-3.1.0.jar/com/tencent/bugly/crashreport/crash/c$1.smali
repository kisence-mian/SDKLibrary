.class final Lcom/tencent/bugly/crashreport/crash/c$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/lang/Thread;

.field private synthetic c:Ljava/lang/Throwable;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:[B

.field private synthetic f:Z

.field private synthetic g:Lcom/tencent/bugly/crashreport/crash/c;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/c;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)V
    .registers 8

    .line 306
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->g:Lcom/tencent/bugly/crashreport/crash/c;

    iput-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->a:Z

    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->e:[B

    iput-boolean p7, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 311
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "post a throwable %b"

    new-array v3, v1, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 312
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->g:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/c;->a(Lcom/tencent/bugly/crashreport/crash/c;)Lcom/tencent/bugly/crashreport/crash/e;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->b:Ljava/lang/Thread;

    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->e:[B

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V

    .line 313
    iget-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->f:Z

    if-eqz v2, :cond_3b

    .line 315
    const-string v2, "clear user datas"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 316
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->g:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/c;->b(Lcom/tencent/bugly/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->C()V
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_3c

    .line 323
    :cond_3b
    return-void

    .line 318
    :catchall_3c
    move-exception v2

    .line 319
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v3

    if-eq v3, v1, :cond_46

    .line 320
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 322
    :cond_46
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "java catch error: %s"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 324
    return-void
.end method
