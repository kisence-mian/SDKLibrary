.class final Lcom/tencent/bugly/crashreport/biz/a$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/biz/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/biz/a;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/biz/a;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/biz/a$2;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/a$2;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/biz/a;->a(Lcom/tencent/bugly/crashreport/biz/a;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 338
    return-void

    .line 336
    :catchall_6
    move-exception v0

    .line 337
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 339
    return-void
.end method
