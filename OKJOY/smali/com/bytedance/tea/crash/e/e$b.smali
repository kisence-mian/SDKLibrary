.class Lcom/bytedance/tea/crash/e/e$b;
.super Ljava/lang/Thread;
.source "LogcatDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Process;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/Process;J)V
    .registers 4

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/e$b;->a:Ljava/lang/Process;

    .line 129
    iput-wide p2, p0, Lcom/bytedance/tea/crash/e/e$b;->b:J

    .line 130
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 135
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/tea/crash/e/e$b;->b:J

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/e/e$b;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_f

    .line 139
    :goto_5
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/e$b;->a:Ljava/lang/Process;

    if-eqz v0, :cond_e

    .line 140
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/e$b;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 142
    :cond_e
    return-void

    .line 136
    :catch_f
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method
