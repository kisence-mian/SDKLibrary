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

    .line 135
    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/tea/crash/e/e$b;->b:J

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/e/e$b;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 138
    goto :goto_a

    .line 136
    :catch_6
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 139
    :goto_a
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/e$b;->a:Ljava/lang/Process;

    if-eqz v0, :cond_11

    .line 140
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 142
    :cond_11
    return-void
.end method
